----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/05/2020 10:28:19 AM
-- Design Name: 
-- Module Name: project_reti_logiche - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
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
    type state_type is (IDLE, FETCH_ADDR, WAIT_RAM, GET_ADDR, ENC_ADDR, WRITE_BACK, DONE);
    signal pres_state, next_state : state_type;
    
    signal o_en_next, o_we_next, o_done_next : std_logic := '0';
    signal o_data_next : std_logic_vector(7 downto 0) := "00000000";
    signal o_address_next : std_logic_vector(15 downto 0) := "0000000000000000";
    --signal mem_address, mem_address_next : std_logic_vector(15 downto 0) := "0000000000000000";
    
    signal target_address, target_address_next : std_logic_vector(7 downto 0)  := "00000000";
    signal wz_bit, wz_bit_next : std_logic := '0';
    signal wz_num, wz_num_next        : std_logic_vector(2 downto 0) := "000";
    signal wz_offset, wz_offset_next  : std_logic_vector(3 downto 0) := "0001";
    
    signal shift_num, shift_num_next : integer range 0 to 3 := 0;
    
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
            wz_num <= "000";
            wz_offset <= "0001";
            
        elsif (i_clk'event and i_clk = '1') then
            pres_state <= next_state;
            
            o_done <= o_done_next;
            o_en <= o_en_next;
            o_we <= o_we_next;
            o_address <= o_address_next;
            o_data <= o_data_next;            
            
            --mem_address <= mem_address_next;
            is_target_address_set <= is_target_address_set_next;
            
            target_address <= target_address_next;
            wz_bit <= wz_bit_next;
            wz_num <= wz_num_next;
            wz_offset <= wz_offset_next;
            shift_num <= shift_num_next;
            
        end if;
    end process;

    comb_proc: process (pres_state, i_start, i_data, target_address, wz_bit, 
                        wz_num, wz_offset, shift_num, o_address_next, is_target_address_set)
                        --wz_num, wz_offset, mem_address, shift_num, is_target_address_set)
    begin    
        o_done_next <= '0';
        o_en_next <= '0';
        o_we_next <= '0';
        o_data_next <= "00000000";
        o_address_next <= "0000000000000000";
                
        target_address_next <= target_address;
        
        --mem_address_next <= mem_address;
        wz_bit_next <= wz_bit;
        wz_num_next <= wz_num;
        wz_offset_next <= wz_offset;
        shift_num_next <= shift_num;
        
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
            
            if (not is_target_address_set) then
                o_address_next <= std_logic_vector(to_unsigned(8, 16));
                next_state <= WAIT_RAM;
            else                      
                if (unsigned(o_address_next) < 7) then
                    --mem_address_next <= std_logic_vector(unsigned(mem_address) + 1);
                    o_address_next <= std_logic_vector(unsigned(o_address_next) + 1);
                    next_state <= GET_ADDR;
                else
                    next_state <= WRITE_BACK;
                end if;
                
                -- ## CHECK_WZ ## -- 
                if (unsigned(target_address) >= unsigned(i_data)) then
                    
                    if (unsigned(target_address) - unsigned(i_data) < 4) then
                        -- L'indirizzo appartiene alla WZ.
                        wz_bit_next <= '1';
                        --mem_address_next <= mem_address;
                        shift_num_next <= to_integer( unsigned(target_address) - unsigned(i_data) );
                        next_state <= ENC_ADDR;
                    end if;
                    
                end if;
                -- ## END CHECK_WZ ## --              
            end if;
                       
        when WAIT_RAM =>
            next_state <= GET_ADDR;
        
        when GET_ADDR =>
            o_en_next <= '1';
            o_we_next <= '0';
            -- Ottengo il dato dalla RAM.
            -- Se non avevo ancora settato il target_address,
            -- allora il dato in arrivo va in target_address (scelta progettuale di 
            -- ottenere come primo indirizzo quello target) e metto come prossimo stato
            -- quello per ottenere l'indirizzo della prossima WZ.
            -- Se invece è già stato settato, allora l'indirizzo in arrivo è di una delle
            -- 8 WZ, quindi salvo l'indirizzo della WZ e metto come prossimo stato quello
            -- per verificare l'appartenenza del target_address alla WZ.
            if (not is_target_address_set) then
                target_address_next <= i_data;
                is_target_address_set_next <= true;
                
                --mem_address_next <= mem_address;
                --o_address_next <= mem_address;
                o_address_next <= "0000000000000000";
                
                next_state <= FETCH_ADDR;
            else
                if (unsigned(o_address_next) < 7) then
                    --mem_address_next <= std_logic_vector(unsigned(mem_address) + 1);
                    -- TODO: ATTENZIONE
                    -- ASSEGNARE UN SEGNALE A SE STESSO NON SI PUO' FARE. FIXARE ASSOLUTAMENTE
                    o_address_next <= std_logic_vector(unsigned(o_address_next) + 1);
                    next_state <= FETCH_ADDR;
                else
                    next_state <= WRITE_BACK;
                end if;
                
                -- ## CHECK_WZ ## -- 
                if (unsigned(target_address) >= unsigned(i_data)) then
                    
                    if (unsigned(target_address) - unsigned(i_data) < 4) then
                        -- L'indirizzo appartiene alla WZ.
                        wz_bit_next <= '1';
                        --mem_address_next <= mem_address;
                        shift_num_next <= to_integer( unsigned(target_address) - unsigned(i_data) );
                        next_state <= ENC_ADDR;
                    end if;
                    
                end if;
                -- ## END CHECK_WZ ## --
            end if;
      
        when ENC_ADDR =>
            wz_num_next <= o_address_next(2 downto 0);
            wz_offset_next <= std_logic_vector( shift_left( unsigned(wz_offset), shift_num ) );
            next_state <= WRITE_BACK;
            
        when WRITE_BACK =>
            o_en_next <= '1';
            o_we_next <= '1';
            o_address_next <= std_logic_vector(to_unsigned(9, 16));
            o_done_next <= '1';
            
            if (wz_bit = '1') then
                o_data_next <= wz_bit & wz_num & wz_offset;
            else
                o_data_next <= wz_bit & target_address(6 downto 0);
            end if;

            next_state <= DONE;
    
        when DONE =>
            if (i_start = '0') then
                is_target_address_set_next <= false;
                --mem_address_next <= "0000000000000000";
                wz_bit_next <= '0';
                wz_offset_next <= "0001";
                
                next_state <= IDLE;
            end if;
        end case;
    end process;

end Behavioral;