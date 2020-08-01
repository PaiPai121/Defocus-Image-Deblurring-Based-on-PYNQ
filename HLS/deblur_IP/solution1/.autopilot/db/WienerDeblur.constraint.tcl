set clock_constraint { \
    name clk \
    module WienerDeblur \
    port ap_clk \
    period 10 \
    uncertainty 1.25 \
    axilite_clocks {AXI_LITE_clk } \
}

set all_path {}

set false_path {}

set one_path { \
    name conx_path_0 \
    type single_source \
    source { \
            module WienerDeblur \
            instance WienerDeblur_CONTROL_BUS_s_axi_U/int_rows_V \
            bitWidth 32 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_0

set one_path { \
    name conx_path_1 \
    type single_source \
    source { \
            module WienerDeblur \
            instance WienerDeblur_CONTROL_BUS_s_axi_U/int_cols_V \
            bitWidth 32 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_1

