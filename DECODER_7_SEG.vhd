library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DECODER_7_SEG is
    Port(
        BIN_NUM : in STD_LOGIC_VECTOR(3 downto 0);
        DISP : out STD_LOGIC_VECTOR(6 downto 0)
    );
end DECODER_7_SEG;

architecture DECODER_7_SEG_ARCH of DECODER_7_SEG is
  
begin
    process(BIN_NUM)
    begin
        case BIN_NUM is
            when "0000" => DISP <= "0111111";
            when "0001" => DISP <= "0000110";
            when "0010" => DISP <= "1011011";
            when "0011" => DISP <= "1001111";
            when "0100" => DISP <= "1100110";
            when "0101" => DISP <= "1101101";
            when "0110" => DISP <= "1111101";
            when "0111" => DISP <= "0000111";
            when "1000" => DISP <= "1111111";
            when "1001" => DISP <= "1101111";
            when others => DISP <= (others => '0');
        end case;
    end process;

end DECODER_7_SEG_ARCH;