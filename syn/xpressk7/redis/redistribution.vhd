----------------------------------------------------------------------------------
-- Company: LBNL
-- Engineer: Douglas Smith
-- 
-- Create Date: 06/25/2018
-- Design Name: YARR Top Level BRAM version
-- Module Name: redistribution - Behavioral
-- Project Name: YARR
-- Target Devices: XC7k325
-- Tool Versions: Vivado v2016.2 (64-bit)
-- Description: The YARR top level for the BRAM version
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

library UNISIM;
use UNISIM.VComponents.all;

library work;
use work.app_pkg.all;
use work.board_pkg.all;

entity top_level is
    Port (  ---------------------------------------------------------------------------
            -- Xilinx Hard IP Interface
            --  . Clock and Resets
            pcie_clk_p : in std_logic;
            pcie_clk_n : in std_logic;
            clk200_n : in STD_LOGIC;
            clk200_p : in STD_LOGIC;
            rst_n_i : in STD_LOGIC;
            sys_rst_n_i : in STD_LOGIC;

            --  . Serial I/F
            pci_exp_txn : out std_logic_vector(4-1 downto 0);       
            pci_exp_txp : out std_logic_vector(4-1 downto 0);          
            pci_exp_rxn : in std_logic_vector(4-1 downto 0);      
            pci_exp_rxp : in std_logic_vector(4-1 downto 0);

            -- . IO
            usr_sw_i : in STD_LOGIC_VECTOR (4 downto 0);
            usr_led_o : out STD_LOGIC_VECTOR (7 downto 0);
            
            ---------------------------------------------------------
            -- FMC
            ---------------------------------------------------------
            -- HPC
	    FMC_HPC_LA_P      : inout std_logic_vector (33 downto 0);
	    FMC_HPC_LA_N      : inout std_logic_vector (33 downto 0);


            --fe_clk_p        : out std_logic_vector(c_TX_CHANNELS-1 downto 0);
            --fe_clk_n        : out std_logic_vector(c_TX_CHANNELS-1 downto 0);
            --fe_cmd_p        : out std_logic_vector(c_TX_CHANNELS-1 downto 0);
            --fe_cmd_n        : out std_logic_vector(c_TX_CHANNELS-1 downto 0);
            --fe_data_p        : in  std_logic_vector((c_RX_CHANNELS*c_RX_NUM_LANES)-1 downto 0);
            --fe_data_n        : in  std_logic_vector((c_RX_CHANNELS*c_RX_NUM_LANES)-1 downto 0);
            -- I2c
            --sda_io                : inout std_logic;
            --scl_io                    : inout std_logic;
            -- SPI
            --scl_o   : out std_logic;
            --sda_o   : out std_logic;
            --sdi_i   : in std_logic;
            --latch_o : out std_logic

	    --LPC
            FMC_LPC_LA_P      : inout std_logic_vector (33 downto 0);
            FMC_LPC_LA_N      : inout std_logic_vector (33 downto 0)

            );
end top_level;

architecture Behavioral of top_level is

    component bram_yarr 
	Port ( pcie_clk_p : in std_logic;
            pcie_clk_n : in std_logic;
            clk200_n : in STD_LOGIC;
            clk200_p : in STD_LOGIC;
            rst_n_i : in STD_LOGIC;
            sys_rst_n_i : in STD_LOGIC;
            --  . Serial I/F
            pci_exp_txn : out std_logic_vector(4-1 downto 0);--output wire [4                                -1:0] pci_exp_txn           ,
            pci_exp_txp : out std_logic_vector(4-1 downto 0);--output wire [4                                -1:0] pci_exp_txp           ,
            pci_exp_rxn : in std_logic_vector(4-1 downto 0);--input  wire [4                                -1:0] pci_exp_rxn           ,
            pci_exp_rxp : in std_logic_vector(4-1 downto 0);
            -- . IO
            usr_sw_i : in STD_LOGIC_VECTOR (2 downto 0);
            usr_led_o : out STD_LOGIC_VECTOR (2 downto 0);
            --front_led_o : out STD_LOGIC_VECTOR (3 downto 0);
            
            ---------------------------------------------------------
            -- FMC
            ---------------------------------------------------------
            -- Trigger input
            --ext_trig_o        : out std_logic;
            -- LVDS buffer
            --pwdn_l            : out std_logic_vector(2 downto 0);
            -- GPIO
            --io              : inout std_logic_vector(2 downto 0);
            -- FE-I4
            fe_clk_p        : out std_logic_vector(c_TX_CHANNELS-1 downto 0);
            fe_clk_n        : out std_logic_vector(c_TX_CHANNELS-1 downto 0);
            fe_cmd_p        : out std_logic_vector(c_TX_CHANNELS-1 downto 0);
            fe_cmd_n        : out std_logic_vector(c_TX_CHANNELS-1 downto 0);
            fe_data_p        : in  std_logic_vector((c_RX_CHANNELS*c_RX_NUM_LANES)-1 downto 0);
            fe_data_n        : in  std_logic_vector((c_RX_CHANNELS*c_RX_NUM_LANES)-1 downto 0);
            -- I2c
            --sda_io                : inout std_logic;
            --scl_io                    : inout std_logic;
            -- SPI
            scl_o   : out std_logic;
            sda_o   : out std_logic;
            sdi_i   : in std_logic;
            latch_o : out std_logic
               );
    end component;
    
    

    

    --signals
    signal fe_clk_p_s : STD_LOGIC_VECTOR(0 downto 0);
    signal fe_clk_n_s : STD_LOGIC_VECTOR(0 downto 0);
    signal fe_cmd_p_s : STD_LOGIC_VECTOR(0 downto 0);
    signal fe_cmd_n_s : STD_LOGIC_VECTOR(0 downto 0);
    signal fe_data_p_s : STD_LOGIC_VECTOR(3 DOWNTO 0);
    signal fe_data_n_s : STD_LOGIC_VECTOR(3 DOWNTO 0);
    signal cfg_interrupt_msienable_s : STD_LOGIC;
    signal cfg_interrupt_msixenable_s : STD_LOGIC;
    signal scl_s : STD_LOGIC;
    signal sda_s : STD_LOGIC;
    signal sdi_s : STD_LOGIC;
    signal latch_s : STD_LOGIC;
    signal rst_s : STD_LOGIC;
    
    
begin
  --assign signals
  rst_s <= rst_n_i;
  fe_clk_p_s(0) <= FMC_HPC_LA_P(6);
  fe_clk_n_s(0) <= FMC_HPC_LA_N(6);

  fe_cmd_p_s(0) <= FMC_HPC_LA_P(1);
  fe_cmd_n_s(0) <= FMC_HPC_LA_N(1);

  fe_data_p_s(0) <= FMC_HPC_LA_P(2);
  fe_data_p_s(1) <= FMC_HPC_LA_P(0);
  fe_data_p_s(2) <= FMC_HPC_LA_P(3);
  fe_data_p_s(3) <= FMC_HPC_LA_P(4);
  fe_data_n_s(0) <= FMC_HPC_LA_N(2);
  fe_data_n_s(1) <= FMC_HPC_LA_N(0);
  fe_data_n_s(2) <= FMC_HPC_LA_N(3);
  fe_data_n_s(3) <= FMC_HPC_LA_N(4);

  scl_s <= FMC_HPC_LA_P(32);
  sda_s <= FMC_HPC_LA_N(32);
  sdi_s <= FMC_HPC_LA_P(33);
  latch_s <= FMC_HPC_LA_P(33);
  


   bram : bram_yarr
      PORT MAP (
            pcie_clk_p => pcie_clk_p,
            pcie_clk_n => pcie_clk_n,
            clk200_n => clk200_n,
            clk200_p => clk200_p,
            rst_n_i => rst_s,
            sys_rst_n_i => sys_rst_n_i,
            pci_exp_txn => pci_exp_txn,
            pci_exp_txp => pci_exp_txp,
            pci_exp_rxn => pci_exp_rxn,
            pci_exp_rxp => pci_exp_rxp,
            usr_sw_i => usr_sw_i(2 downto 0),
            usr_led_o => usr_led_o(2 downto 0),
            fe_clk_p => fe_clk_p_s,
            fe_clk_n => fe_clk_n_s,
            fe_cmd_p => fe_cmd_p_s,
            fe_cmd_n => fe_cmd_n_s,
            fe_data_p => fe_data_p_s,
            fe_data_n => fe_data_n_s,
            scl_o => scl_s,
            sda_o => sda_s,
            sdi_i => sdi_s,
            latch_o => latch_s
            );

      
  
end Behavioral;
