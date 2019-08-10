----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Bu�ra Sipahio�lu, Or�un �zdemir
-- 
-- Create Date:    23:11:21 11/08/2017 
-- Design Name: 
-- Module Name:    Assigner - Behavioral 
-- Project Name: 	Hot and Cold Game
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: Lucky Number which will be generated  in RandomGenerator.
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 

	--lucky number binary olarak geliyor. Onun ayarlamalar�n� yap.(Yap�ld�)
	--Assigner da initial olarak harflerin oldu�u kesin mi? onun yerine not alarak yapabilirsin.
	--Harfleri update edemezsin!!!!
	--Harfleri nas�l update edebiliriz? -> her harf i�in yeni bir sinyal yarat, sinyaller harflerin notlar�na kar��l�k gelsin
	--Sonra e�er lucky number A ya kar��l�k geliyorsa NotA sinyaline atans�n.??
	-- Hepsinin not u e�itse You Win, De�ilse... ++++
	--Bu mant�kla harfleri 1 yapmaktansa not 'unu ald�r.!!! -> �nce update edilme problemini ��z. ++++
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
 
entity Assigner is
    Port ( LuckyNumber : in  STD_LOGIC_VECTOR (3 downto 0); --Bir block nas�l ba�ka blocktan bir de�eri direk alabilir eskilere bakarak ��ren.
           S1 : in  STD_LOGIC; -- Input Signals
           S2 : in  STD_LOGIC;
           S3 : in  STD_LOGIC;
           S4 : in  STD_LOGIC;
           S5 : in  STD_LOGIC;
           S6 : in  STD_LOGIC;
           S7 : in  STD_LOGIC;
           S8 : in  STD_LOGIC;
           S9 : in  STD_LOGIC;
           S10 : in  STD_LOGIC);
end Assigner;

architecture Behavioral of Assigner is

signal WIRE_LUCKY_NUMBER : STD_LOGIC_VECTOR (3 DOWNTO 0);
signal A,B,C,D,E,F,G,H,I,J : std_logic:= '0';
signal LuckyStrike : std_logic:='0';
signal�counter�:�integer�:=�0;
begin

 process(LuckyNumber)
 begin
 												
	if(LuckyNumber = "0001") then A <= not A; A <= LuckyStrike; counter <= counter + 1;
		elsif ( LuckyNumber = "0010") then B <= not B; B <= LuckyStrike; counter <= counter + 1;
		elsif ( LuckyNumber = "0011") then C <= not C; C <= LuckyStrike; counter <= counter + 1;
		elsif ( LuckyNumber = "0100") then D <= not D; D <= LuckyStrike; counter <= counter + 1;
		elsif ( LuckyNumber = "0101") then E <= not E; E <= LuckyStrike; counter <= counter + 1;
		elsif ( LuckyNumber = "0110") then F <= not F; F <= LuckyStrike; counter <= counter + 1;
		elsif ( LuckyNumber = "0111") then G <= not G; G <= LuckyStrike; counter <= counter + 1;
		elsif ( LuckyNumber = "1000") then H <= not H; H <= LuckyStrike; counter <= counter + 1;
		elsif ( LuckyNumber = "1001") then I <= not I; I <= LuckyStrike; counter <= counter + 1;		
		else J <= not J; J <= LuckyStrike; counter <= counter + 1;

end if;

end process;


RANDOM : ENTITY WORK.RandomGenerator PORT MAP(  --Random Generator hen�z say� �retmedi�i i�in hata veriyor. En son hepsini birle�tirirken bak.
	LuckyNumber => WIRE_LUCKY_NUMBER
	
	);

			

  

end Behavioral;

