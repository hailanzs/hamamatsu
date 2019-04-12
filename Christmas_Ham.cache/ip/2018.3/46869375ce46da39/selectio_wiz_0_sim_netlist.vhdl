-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Apr 12 13:47:52 2019
-- Host        : ECEB-4022-13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ selectio_wiz_0_sim_netlist.vhdl
-- Design      : selectio_wiz_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_selectio_wiz_0_selectio_wiz is
  port (
    data_in_from_pins_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_from_pins_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_to_device : out STD_LOGIC_VECTOR ( 1 downto 0 );
    delay_clk : in STD_LOGIC;
    in_delay_reset : in STD_LOGIC;
    in_delay_data_ce : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_delay_data_inc : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_delay_tap_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    in_delay_tap_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    delay_locked : out STD_LOGIC;
    ref_clock : in STD_LOGIC;
    clk_in : in STD_LOGIC;
    clk_out : out STD_LOGIC;
    io_reset : in STD_LOGIC
  );
  attribute DEV_W : integer;
  attribute DEV_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_selectio_wiz_0_selectio_wiz : entity is 2;
  attribute SYS_W : integer;
  attribute SYS_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_selectio_wiz_0_selectio_wiz : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_selectio_wiz_0_selectio_wiz;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_selectio_wiz_0_selectio_wiz is
  signal clk_in_bufmr : STD_LOGIC;
  signal clk_in_int : STD_LOGIC;
  signal \^clk_out\ : STD_LOGIC;
  signal data_in_from_pins_delay : STD_LOGIC;
  signal data_in_from_pins_int : STD_LOGIC;
  signal ref_clock_bufg : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of bufmr_in_clk_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout_buf_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of delayctrl : label is "PRIMITIVE";
  attribute IODELAY_GROUP : string;
  attribute IODELAY_GROUP of delayctrl : label is "selectio_wiz_0_group";
  attribute BOX_TYPE of ibuf_clk_inst : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of ibuf_clk_inst : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of ibuf_clk_inst : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of ibuf_clk_inst : label is "AUTO";
  attribute BOX_TYPE of \pins[0].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[0].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[0].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[0].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[0].iddr_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of \pins[0].iddr_inst\ : label is "FALSE";
  attribute BOX_TYPE of \pins[0].idelaye2_bus\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[0].idelaye2_bus\ : label is "selectio_wiz_0_group";
  attribute SIM_DELAY_D : integer;
  attribute SIM_DELAY_D of \pins[0].idelaye2_bus\ : label is 0;
  attribute BOX_TYPE of ref_clk_bufg : label is "PRIMITIVE";
begin
  clk_out <= \^clk_out\;
bufmr_in_clk_inst: unisim.vcomponents.BUFMR
     port map (
      I => clk_in_bufmr,
      O => clk_in_int
    );
clkout_buf_inst: unisim.vcomponents.BUFR
    generic map(
      BUFR_DIVIDE => "BYPASS",
      SIM_DEVICE => "7SERIES"
    )
        port map (
      CE => '1',
      CLR => '0',
      I => clk_in_int,
      O => \^clk_out\
    );
delayctrl: unisim.vcomponents.IDELAYCTRL
    generic map(
      SIM_DEVICE => "7SERIES"
    )
        port map (
      RDY => delay_locked,
      REFCLK => ref_clock_bufg,
      RST => io_reset
    );
ibuf_clk_inst: unisim.vcomponents.IBUF
     port map (
      I => clk_in,
      O => clk_in_bufmr
    );
\pins[0].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(0),
      IB => data_in_from_pins_n(0),
      O => data_in_from_pins_int
    );
\pins[0].iddr_inst\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "ASYNC"
    )
        port map (
      C => \^clk_out\,
      CE => '1',
      D => data_in_from_pins_delay,
      Q1 => data_in_to_device(0),
      Q2 => data_in_to_device(1),
      R => io_reset,
      S => '0'
    );
\pins[0].idelaye2_bus\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => delay_clk,
      CE => in_delay_data_ce(0),
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => in_delay_tap_in(4 downto 0),
      CNTVALUEOUT(4 downto 0) => in_delay_tap_out(4 downto 0),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay,
      IDATAIN => data_in_from_pins_int,
      INC => in_delay_data_inc(0),
      LD => in_delay_reset,
      LDPIPEEN => '0',
      REGRST => io_reset
    );
ref_clk_bufg: unisim.vcomponents.BUFG
     port map (
      I => ref_clock,
      O => ref_clock_bufg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    data_in_from_pins_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_from_pins_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_to_device : out STD_LOGIC_VECTOR ( 1 downto 0 );
    delay_clk : in STD_LOGIC;
    in_delay_reset : in STD_LOGIC;
    in_delay_data_ce : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_delay_data_inc : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_delay_tap_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    in_delay_tap_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    delay_locked : out STD_LOGIC;
    ref_clock : in STD_LOGIC;
    clk_in : in STD_LOGIC;
    clk_out : out STD_LOGIC;
    io_reset : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute DEV_W : integer;
  attribute DEV_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is 2;
  attribute SYS_W : integer;
  attribute SYS_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute DEV_W of inst : label is 2;
  attribute SYS_W of inst : label is 1;
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_selectio_wiz_0_selectio_wiz
     port map (
      clk_in => clk_in,
      clk_out => clk_out,
      data_in_from_pins_n(0) => data_in_from_pins_n(0),
      data_in_from_pins_p(0) => data_in_from_pins_p(0),
      data_in_to_device(1 downto 0) => data_in_to_device(1 downto 0),
      delay_clk => delay_clk,
      delay_locked => delay_locked,
      in_delay_data_ce(0) => in_delay_data_ce(0),
      in_delay_data_inc(0) => in_delay_data_inc(0),
      in_delay_reset => in_delay_reset,
      in_delay_tap_in(4 downto 0) => in_delay_tap_in(4 downto 0),
      in_delay_tap_out(4 downto 0) => in_delay_tap_out(4 downto 0),
      io_reset => io_reset,
      ref_clock => ref_clock
    );
end STRUCTURE;
