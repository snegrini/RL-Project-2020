----------------------------------------------------------------------------------
--
-- Prova Finale (Progetto di Reti Logiche)
-- Docente: Fabio Salice - A.A. 2019/2020
-- 
-- Samuele Negrini
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity                project_reti_logiche                        is
    port                                                           (
        i_clk         :           in                       std_logic;
        i_start       :           in                       std_logic;
        i_rst         :           in                       std_logic;
        i_data        :   in        std_logic_vector(7   downto   0);
        o_address     :   out      std_logic_vector(15   downto   0);
        o_done        :                out                 std_logic;
        o_en          :                out                 std_logic;
        o_we          :                out                 std_logic;
        o_data        :   out     std_logic_vector   (7   downto   0)
    );
end                                             project_reti_logiche;

architecture Behavioral of project_reti_logiche is
    type state_type is (IDLE, FETCH_ADDR, WAIT_RAM, GET_ADDR, WRITE_BACK, DONE);
    signal pres_state, next_state : state_type;
    
    signal o_en_next, o_we_next, o_done_next : std_logic := '0';
    signal o_data_next : std_logic_vector(7 downto 0) := "00000000";
    signal o_address_next, o_address_reg : std_logic_vector(15 downto 0) := "0000000000000000";
    
    signal target_address, target_address_next : std_logic_vector(7 downto 0) := "00000000";
    signal wz_bit, wz_bit_next : std_logic := '0';
    signal wz_offset, wz_offset_next  : std_logic_vector(3 downto 0) := "0001";
        
    signal is_target_address_set, is_target_address_set_next : boolean := false;    
    
begin
    
    state_reg: process (i_clk, i_rst)
    begin
        if (i_rst = '1') then
            pres_state <= IDLE;
            
            o_done <= '0';
            o_en <= '0';
            o_we <= '0';
            is_target_address_set <= false;
            wz_bit <= '0';
            wz_offset <= "0001";
            
        elsif (i_clk'event and i_clk = '1') then
            pres_state <= next_state;
            
            o_done <= o_done_next;
            o_en <= o_en_next;
            o_we <= o_we_next;
            o_address <= o_address_next;
            o_address_reg <= o_address_next;
            o_data <= o_data_next;            
            
            is_target_address_set <= is_target_address_set_next;       
            target_address <= target_address_next;
            wz_bit <= wz_bit_next;
            wz_offset <= wz_offset_next;            
        end if;
    end process;

    comb_proc: process (pres_state, i_start, i_data, target_address, wz_bit, 
                        wz_offset, o_address_reg, is_target_address_set)
    begin    
        o_done_next <= '0';
        o_en_next <= '0';
        o_we_next <= '0';
        o_data_next <= "00000000";
        o_address_next <= "0000000000000000";
                
        target_address_next <= target_address;
        
        wz_bit_next <= wz_bit;
        wz_offset_next <= wz_offset;
        
        is_target_address_set_next <= is_target_address_set;
        next_state <= pres_state;
        
        case pres_state is
        
        when IDLE =>
            if i_start = '1' then
                next_state <= FETCH_ADDR;
            end if;
            
        when FETCH_ADDR =>
            o_en_next <= '1';
            o_we_next <= '0';
                       
            o_address_next <= std_logic_vector(to_unsigned(8, 16));
            next_state <= WAIT_RAM;
                        
        when WAIT_RAM =>
            o_en_next <= '1';
            o_we_next <= '0';
            
            o_address_next <= o_address_reg;
            next_state <= GET_ADDR;
        
        when GET_ADDR =>
                o_en_next <= '1';
                o_we_next <= '0';

            if (not is_target_address_set) then
                target_address_next <= i_data;
                is_target_address_set_next <= true;               
                o_address_next <= std_logic_vector(to_unsigned(0, 16));
                
                next_state <= WAIT_RAM;
            else                             
                if (unsigned(i_data) <= unsigned(target_address) and unsigned(target_address) - unsigned(i_data) < 4) then
                    wz_bit_next <= '1';                    
                    wz_offset_next <= std_logic_vector( shift_left( unsigned(wz_offset), to_integer( unsigned(target_address) - unsigned(i_data)) ) );
                    o_address_next <= o_address_reg;

                    next_state <= WRITE_BACK;
                else
                    if (unsigned(o_address_reg) < 7) then                   
                        o_address_next <= std_logic_vector(unsigned(o_address_reg) + 1);
                        
                        next_state <= WAIT_RAM;
                    else
                        o_address_next <= o_address_reg;

                        next_state <= WRITE_BACK;
                    end if;                
                end if;
            end if;
            
        when WRITE_BACK =>
            o_en_next <= '1';
            o_we_next <= '1';
            o_address_next <= std_logic_vector(to_unsigned(9, 16));
                       
            if (wz_bit = '1') then
                o_data_next <= wz_bit & o_address_reg(2 downto 0) & wz_offset;
            else
                o_data_next <= wz_bit & target_address(6 downto 0);
            end if;

            next_state <= DONE;
    
        when DONE =>           
            if (i_start = '0') then
                is_target_address_set_next <= false;
                wz_bit_next <= '0';
                wz_offset_next <= "0001";
                
                next_state <= IDLE;
            else
                o_done_next <= '1';
            end if;
        end case;
    end process;

end Behavioral;