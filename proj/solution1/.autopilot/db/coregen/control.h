// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/COR)
//        bit 0 - ap_done (Read/COR)
//        bit 1 - ap_ready (Read/COR)
//        others - reserved
// 0x10 : Data signal of input_feature_map
//        bit 31~0 - input_feature_map[31:0] (Read/Write)
// 0x14 : Data signal of input_feature_map
//        bit 31~0 - input_feature_map[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of layer_weights
//        bit 31~0 - layer_weights[31:0] (Read/Write)
// 0x20 : Data signal of layer_weights
//        bit 31~0 - layer_weights[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of linear_weights
//        bit 31~0 - linear_weights[31:0] (Read/Write)
// 0x2c : Data signal of linear_weights
//        bit 31~0 - linear_weights[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of output_feature_map
//        bit 31~0 - output_feature_map[31:0] (Read/Write)
// 0x38 : Data signal of output_feature_map
//        bit 31~0 - output_feature_map[63:32] (Read/Write)
// 0x3c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL                 0x00
#define CONTROL_ADDR_GIE                     0x04
#define CONTROL_ADDR_IER                     0x08
#define CONTROL_ADDR_ISR                     0x0c
#define CONTROL_ADDR_INPUT_FEATURE_MAP_DATA  0x10
#define CONTROL_BITS_INPUT_FEATURE_MAP_DATA  64
#define CONTROL_ADDR_LAYER_WEIGHTS_DATA      0x1c
#define CONTROL_BITS_LAYER_WEIGHTS_DATA      64
#define CONTROL_ADDR_LINEAR_WEIGHTS_DATA     0x28
#define CONTROL_BITS_LINEAR_WEIGHTS_DATA     64
#define CONTROL_ADDR_OUTPUT_FEATURE_MAP_DATA 0x34
#define CONTROL_BITS_OUTPUT_FEATURE_MAP_DATA 64
