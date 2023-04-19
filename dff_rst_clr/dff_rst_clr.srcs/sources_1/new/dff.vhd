
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity dff is
  Port (
        d1,d2,clr,rst,clk : in std_logic;
        q1,q2 : out std_logic
        );
end dff;

architecture Behavioral of dff is
begin
------------------------------------
    with_reset: process(clk,rst)
    begin
        if(rst = '1') then
            q1 <= '0';
        elsif(clk'event and clk = '1') then
            q1 <= d1;
        end if;
    end process with_reset;
------------------------------------
    with_clear: process(clk)
    begin
        if(clk'event and clk = '1') then
            if(clr = '1') then
                q2 <= '0';
            else
                q2 <= d2;
            end if;
        end if;
    end process with_clear;
end Behavioral;
