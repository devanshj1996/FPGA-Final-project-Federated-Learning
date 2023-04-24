set SynModuleInfo {
  {SRCNAME tiled_conv_Pipeline_INPUT_BUFFER_HEIGHT_INPUT_BUFFER_WIDTH MODELNAME tiled_conv_Pipeline_INPUT_BUFFER_HEIGHT_INPUT_BUFFER_WIDTH RTLNAME tiled_conv_tiled_conv_Pipeline_INPUT_BUFFER_HEIGHT_INPUT_BUFFER_WIDTH
    SUBMODULES {
      {MODELNAME tiled_conv_flow_control_loop_pipe_sequential_init RTLNAME tiled_conv_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME tiled_conv_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME tiled_conv_Pipeline_WEIGHT_KERNEL_HEIGHT_WEIGHT_KERNEL_WIDTH MODELNAME tiled_conv_Pipeline_WEIGHT_KERNEL_HEIGHT_WEIGHT_KERNEL_WIDTH RTLNAME tiled_conv_tiled_conv_Pipeline_WEIGHT_KERNEL_HEIGHT_WEIGHT_KERNEL_WIDTH}
  {SRCNAME tiled_conv_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3 MODELNAME tiled_conv_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3 RTLNAME tiled_conv_tiled_conv_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_39_3
    SUBMODULES {
      {MODELNAME tiled_conv_mul_mul_16s_16s_29_4_1 RTLNAME tiled_conv_mul_mul_16s_16s_29_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME tiled_conv_mac_muladd_16s_16s_29ns_29_4_1 RTLNAME tiled_conv_mac_muladd_16s_16s_29ns_29_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME tiled_conv_Pipeline_VITIS_LOOP_69_2_VITIS_LOOP_70_3 MODELNAME tiled_conv_Pipeline_VITIS_LOOP_69_2_VITIS_LOOP_70_3 RTLNAME tiled_conv_tiled_conv_Pipeline_VITIS_LOOP_69_2_VITIS_LOOP_70_3}
  {SRCNAME tiled_conv_Pipeline_VITIS_LOOP_92_2_VITIS_LOOP_93_3 MODELNAME tiled_conv_Pipeline_VITIS_LOOP_92_2_VITIS_LOOP_93_3 RTLNAME tiled_conv_tiled_conv_Pipeline_VITIS_LOOP_92_2_VITIS_LOOP_93_3}
  {SRCNAME tiled_conv_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH MODELNAME tiled_conv_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH RTLNAME tiled_conv_tiled_conv_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH}
  {SRCNAME tiled_conv_Pipeline_VITIS_LOOP_94_2_VITIS_LOOP_96_3 MODELNAME tiled_conv_Pipeline_VITIS_LOOP_94_2_VITIS_LOOP_96_3 RTLNAME tiled_conv_tiled_conv_Pipeline_VITIS_LOOP_94_2_VITIS_LOOP_96_3}
  {SRCNAME tiled_conv_Pipeline_VITIS_LOOP_109_1_VITIS_LOOP_111_2 MODELNAME tiled_conv_Pipeline_VITIS_LOOP_109_1_VITIS_LOOP_111_2 RTLNAME tiled_conv_tiled_conv_Pipeline_VITIS_LOOP_109_1_VITIS_LOOP_111_2
    SUBMODULES {
      {MODELNAME tiled_conv_mac_muladd_16s_15ns_29ns_29_4_1 RTLNAME tiled_conv_mac_muladd_16s_15ns_29ns_29_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME tiled_conv MODELNAME tiled_conv RTLNAME tiled_conv IS_TOP 1
    SUBMODULES {
      {MODELNAME tiled_conv_conv_in_buf_V_0_RAM_1WNR_AUTO_1R1W RTLNAME tiled_conv_conv_in_buf_V_0_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiled_conv_conv_wt_buf_V_0_0_RAM_AUTO_1R1W RTLNAME tiled_conv_conv_wt_buf_V_0_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiled_conv_conv_out_buf_V_0_RAM_1WNR_AUTO_1R1W RTLNAME tiled_conv_conv_out_buf_V_0_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiled_conv_max_pool_out_buf_V_0_RAM_AUTO_1R1W RTLNAME tiled_conv_max_pool_out_buf_V_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiled_conv_layer1_output_V_RAM_AUTO_1R1W RTLNAME tiled_conv_layer1_output_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiled_conv_fm_m_axi RTLNAME tiled_conv_fm_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME tiled_conv_wt_m_axi RTLNAME tiled_conv_wt_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME tiled_conv_control_s_axi RTLNAME tiled_conv_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
