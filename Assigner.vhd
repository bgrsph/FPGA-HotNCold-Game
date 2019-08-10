----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Buðra Sipahioðlu, Orçun Özdemir
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

	--lucky number binary olarak geliyor. Onun ayarlamalarýný yap.(Yapýldý)
	--Assigner da initial olarak harflerin olduðu kesin mi? onun yerine not alarak yapabilirsin.
	--Harfleri update edemezsin!!!!
	--Harfleri nasýl update edebiliriz? -> her harf için yeni bir sinyal yarat, sinyaller harflerin notlarýna karþýlýk gelsin
	--Sonra eðer lucky number A ya karþýlýk geliyorsa NotA sinyaline atansýn.??
	-- Hepsinin not u eþitse You Win, Deðilse... ++++
	--Bu mantýkla harfleri 1 yapmaktansa not 'unu aldýr.!!! -> Önce update edilme problemini çöz. ++++
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
    Port ( LuckyNumber : in  STD_LOGIC_VECTOR (3 downto 0); --Bir block nasýl baþka blocktan bir deðeri direk alabilir eskilere bakarak öðren.
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
signal counter : integer := 0;
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


RANDOM : ENTITY WORK.RandomGenerator PORT MAP(  --Random Generator henüz sayý üretmediði için hata veriyor. En son hepsini birleþtirirken bak.
	LuckyNumber => WIRE_LUCKY_NUMBER
	
	);

			

  

end Behavioral;

