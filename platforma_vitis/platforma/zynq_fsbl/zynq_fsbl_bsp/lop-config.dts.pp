#line 2 "lop-config.dts"
/dts-v1/;
/ {
        compatible = "system-device-tree-v1,lop";
        lops {
                lop_0 {
                        compatible = "system-device-tree-v1,lop,load";
                        load = "assists/baremetal_validate_comp_xlnx.py";
                };

                lop_1 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "C:/Users/Admin/Desktop/ANUL3_SEM1/SSC_Proiect/platforma_vitis/platforma/zynq_fsbl/zynq_fsbl_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "ps7_cortexa9_0 D:/InstalareVivado/Vitis/2024.1/data/embeddedsw/lib/sw_services/xilffs_v5_2/src C:/Users/Admin/Desktop/ANUL3_SEM1/SSC_Proiect/platforma_vitis/.wsdata/.repo.yaml";
                };

                lop_2 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "C:/Users/Admin/Desktop/ANUL3_SEM1/SSC_Proiect/platforma_vitis/platforma/zynq_fsbl/zynq_fsbl_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "ps7_cortexa9_0 D:/InstalareVivado/Vitis/2024.1/data/embeddedsw/lib/sw_services/xilrsa_v1_8/src C:/Users/Admin/Desktop/ANUL3_SEM1/SSC_Proiect/platforma_vitis/.wsdata/.repo.yaml";
                };

        };
    };
