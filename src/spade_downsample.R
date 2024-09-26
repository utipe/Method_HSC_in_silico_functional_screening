library("spade")
library('flowCore')
library('Biobase')
library('data.table')
library(infinityFlow)

setwd("D:/dryOpen/personal/AL/Dropbox/PJ-001/data/xml_data/20190417 CS-39_no_gate/")
markers <- c('FSC-A', 'FSC-H', 'FSC-W', 'SSC-A', 'SSC-H', 'SSC-W', 'FITC-A', 'PerCP-Cy5-5-A', 'A700-A', 
             'APC-Cy7-A', 'BV421-A', 'BV711-A', 'BUV395-A', 'BUV737-A', 'APC-A', 'mCherry-A')
SPADE.addDensityToFCS("Specimen_001_full_002.fcs","specimen_dens.fcs",cols=markers)
SPADE.downsampleFCS("specimen_dens.fcs","specimen_down.fcs",exclude_pctile = 0.01, target_percent=0.1)

setwd("Dropbox/PJ-001/data/newData/")

markers <- c('FSC_A','FSC_H','FSC_W','SSC_A','SSC_H','SSC_W','SYTOX_RED_APC','CKIT_APC_CY7','CD34_FITC',
             'FCGR_IL7R_A700','SCA1_BUV395','SLAMF1_BV421','CD11b_BV711','LINEAGE_BUV737','MCHERRY','FLK2_PERCP_CY55')

markers <- c('FSC_A','FSC_H','FSC_W','SSC_A','SSC_H','SSC_W','SYTOX_RED_APC','CKIT_APC_CY7','CD34_FITC',
             'FCGR_IL7R_A700','SCA1_BUV395','CD11b_BV711','LINEAGE_BUV737','FLK2_PERCP_CY55')

SPADE.addDensityToFCS("Mouse ID 150-1/150-1-2_c.fcs","Mouse ID 150-1/gate_2_dens.fcs",cols=markers)
SPADE.addDensityToFCS("Mouse ID 152-3/152-3-2_c.fcs","Mouse ID 152-3/gate_2_dens.fcs",cols=markers)
SPADE.addDensityToFCS("Mouse ID 158-1/158-1-2_c.fcs","Mouse ID 158-1/gate_2_dens.fcs",cols=markers)
#SPADE.addDensityToFCS("Mouse ID 162-1/162-1-2_c.fcs","Mouse ID 162-1/gate_2_dens.fcs",cols=markers)
SPADE.addDensityToFCS("Mouse ID 162-2/162-2-2_c.fcs","Mouse ID 162-2/gate_2_dens.fcs",cols=markers)
SPADE.addDensityToFCS("Mouse ID 158-5/158-5-2_c.fcs","Mouse ID 158-5/gate_2_dens.fcs",cols=markers)

SPADE.addDensityToFCS("Mouse ID 150-1/150-1-3_c.fcs","Mouse ID 150-1/gate3_dens1.fcs",cols=markers)
SPADE.addDensityToFCS("Mouse ID 152-3/152-3-3_c.fcs","Mouse ID 152-3/gate3_dens1.fcs",cols=markers)
SPADE.addDensityToFCS("Mouse ID 158-1/158-1-3_c.fcs","Mouse ID 158-1/gate3_dens1.fcs",cols=markers)
#SPADE.addDensityToFCS("Mouse ID 162-1/162-1-3_c.fcs","Mouse ID 162-1/gate3_dens.fcs",cols=markers)
SPADE.addDensityToFCS("Mouse ID 162-2/162-2-3_c.fcs","Mouse ID 162-2/gate3_dens1.fcs",cols=markers)
SPADE.addDensityToFCS("Mouse ID 158-5/158-5-3_c.fcs","Mouse ID 158-5/gate3_dens1.fcs",cols=markers)

SPADE.downsampleFCS("Mouse ID 150-1/gate_2_dens.fcs","Mouse ID 150-1/gate_2_down.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("Mouse ID 152-3/gate_2_dens.fcs","Mouse ID 152-3/gate_2_down.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("Mouse ID 158-1/gate_2_dens.fcs","Mouse ID 158-1/gate_2_down.fcs",exclude_pctile = 0.01, target_percent=0.1)
#SPADE.downsampleFCS("Mouse ID 162-1/gate_2_dens.fcs","Mouse ID 162-1/gate_2_down.fcs",exclude_pctile = 0.01, target_number=50000, target_percent = NULL)
SPADE.downsampleFCS("Mouse ID 162-2/gate_2_dens.fcs","Mouse ID 162-2/gate_2_down.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("Mouse ID 158-5/gate_2_dens.fcs","Mouse ID 158-5/gate_2_down.fcs",exclude_pctile = 0.01, target_percent=0.1)


SPADE.downsampleFCS("Mouse ID 150-1/gate3_dens1.fcs","Mouse ID 150-1/gate_3_down1.fcs",exclude_pctile = 0.01, target_number=50000, target_percent = NULL)
SPADE.downsampleFCS("Mouse ID 152-3/gate3_dens1.fcs","Mouse ID 152-3/gate_3_down1.fcs",exclude_pctile = 0.01, target_number=50000, target_percent = NULL)
SPADE.downsampleFCS("Mouse ID 158-1/gate3_dens1.fcs","Mouse ID 158-1/gate_3_down1.fcs",exclude_pctile = 0.01, target_number=50000, target_percent = NULL)
#SPADE.downsampleFCS("Mouse ID 162-1/gate_3_dens.fcs","Mouse ID 162-1/gate_3_down.fcs",exclude_pctile = 0.01, target_number=50000, target_percent = NULL)
SPADE.downsampleFCS("Mouse ID 162-2/gate3_dens1.fcs","Mouse ID 162-2/gate_3_down1.fcs",exclude_pctile = 0.01, target_number=50000, target_percent = NULL)
SPADE.downsampleFCS("Mouse ID 158-5/gate3_dens1.fcs","Mouse ID 158-5/gate_3_down1.fcs",exclude_pctile = 0.01, target_number=50000, target_percent = NULL)

SPADE.downsampleFCS("Mouse ID 150-1/gate_3_dens.fcs","Mouse ID 150-1/gate_3_dow1.fcs",exclude_pctile = 0.01, target_percent=0.2)
SPADE.downsampleFCS("Mouse ID 152-3/gate_3_dens.fcs","Mouse ID 152-3/gate_3_dow1.fcs",exclude_pctile = 0.01, target_percent=0.2)
SPADE.downsampleFCS("Mouse ID 158-1/gate_3_dens.fcs","Mouse ID 158-1/gate_3_dow1.fcs",exclude_pctile = 0.01, target_percent=0.2)
SPADE.downsampleFCS("Mouse ID 162-1/gate_3_dens.fcs","Mouse ID 162-1/gate_3_dow1.fcs",exclude_pctile = 0.01, target_percent=0.2)
SPADE.downsampleFCS("Mouse ID 162-2/gate_3_dens.fcs","Mouse ID 162-2/gate_3_dow1.fcs",exclude_pctile = 0.01, target_percent=0.2)
SPADE.downsampleFCS("Mouse ID 158-5/gate_3_dens.fcs","Mouse ID 158-5/gate_3_dow1.fcs",exclude_pctile = 0.01, target_percent=0.2)

#SPADE.addDensityToFCS("2-7.fcs","dens_2_7.fcs",cols=markers)

#SPADE.downsampleFCS("mil_with_density.fcs","mil_down.fcs",exclude_pctile = 0.00, target_percent=0.017)
SPADE.addDensityToFCS("data/newData/Mouse ID 152-3/152-3-2.fcs","data/newData/Mouse ID 152-3/gate_2_dens.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/Mouse ID 158-1/158-1-2.fcs","data/newData/Mouse ID 158-1/gate_2_dens.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/Mouse ID 162-1/162-1-2.fcs","data/newData/Mouse ID 162-1/gate_2_dens.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/Mouse ID 162-2/162-2-2.fcs","data/newData/Mouse ID 162-2/gate_2_dens.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/Mouse ID 158-5/158-5-2.fcs","data/newData/Mouse ID 158-5/gate_2_dens.fcs",cols=markers)


SPADE.downsampleFCS("Mouse ID 150-1/gate_2_dens.fcs","Mouse ID 150-1/gate_2_down.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("Mouse ID 152-3/gate_2_dens.fcs","Mouse ID 152-3/gate_2_down.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("Mouse ID 158-1/gate_2_dens.fcs","Mouse ID 158-1/gate_2_down.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("Mouse ID 162-1/gate_2_dens.fcs","Mouse ID 162-1/gate_2_down.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("Mouse ID 162-2/gate_2_dens.fcs","Mouse ID 162-2/gate_2_down.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("Mouse ID 158-5/gate_2_dens.fcs","Mouse ID 158-5/gate_2_down.fcs",exclude_pctile = 0.01, target_percent=0.1)


SPADE.FCSToTree("Mouse ID 150-1/gate_2_down.fcs", "Mouse ID 150-1/clusters.fcs", "Mouse ID 150-1/clusters.table", "Mouse ID 150-1/mst.gml", cols=markers)
SPADE.FCSToTree("Mouse ID 152-3/gate_2_down.fcs", "Mouse ID 152-3/clusters.fcs", "Mouse ID 152-3/clusters.table", "Mouse ID 152-3/mst.gml", cols=markers)
SPADE.FCSToTree("Mouse ID 158-1/gate_2_down.fcs", "Mouse ID 158-1/clusters.fcs", "Mouse ID 158-1/clusters.table", "Mouse ID 158-1/mst.gml", cols=markers)
SPADE.FCSToTree("Mouse ID 162-1/gate_2_down.fcs", "Mouse ID 162-1/clusters.fcs", "Mouse ID 162-1/clusters.table", "Mouse ID 162-1/mst.gml", cols=markers)
SPADE.FCSToTree("Mouse ID 162-2/gate_2_down.fcs", "Mouse ID 162-2/clusters.fcs", "Mouse ID 162-2/clusters.table", "Mouse ID 162-2/mst.gml", cols=markers)
SPADE.FCSToTree("Mouse ID 158-5/gate_2_down.fcs", "Mouse ID 158-5/clusters.fcs", "Mouse ID 158-5/clusters.table", "Mouse ID 158-5/mst.gml", cols=markers)

SPADE.addClusterToFCS("Mouse ID 150-1/gate_3_dens.fcs", "Mouse ID 150-1/cluster_up.fcs", "Mouse ID 150-1/clusters.fcs", cols = markers)
SPADE.addClusterToFCS("Mouse ID 152-3/gate_3_dens.fcs", "Mouse ID 152-3/cluster_up.fcs", "Mouse ID 152-3/clusters.fcs", cols = markers)
SPADE.addClusterToFCS("Mouse ID 158-1/gate_3_dens.fcs", "Mouse ID 158-1/cluster_up.fcs", "Mouse ID 158-1/clusters.fcs", cols = markers)
SPADE.addClusterToFCS("Mouse ID 162-1/gate_3_dens.fcs", "Mouse ID 162-1/cluster_up.fcs", "Mouse ID 162-1/clusters.fcs", cols = markers)
SPADE.addClusterToFCS("Mouse ID 162-2/gate_3_dens.fcs", "Mouse ID 162-2/cluster_up.fcs", "Mouse ID 162-2/clusters.fcs", cols = markers)
SPADE.addClusterToFCS("Mouse ID 158-5/gate_3_dens.fcs", "Mouse ID 158-5/cluster_up.fcs", "Mouse ID 158-5/clusters.fcs", cols = markers)

SPADE.addClusterToFCS("data/newData/Mouse ID 150-1/gate_2_dens.fcs", "data/newData/Mouse ID 150-1/cluster_up.fcs", "data/newData/Mouse ID 150-1/gate_2_cluster.fcs", cols = markers)
SPADE.addClusterToFCS("data/newData/Mouse ID 152-3/gate_2_dens.fcs", "data/newData/Mouse ID 152-3/cluster_up.fcs", "data/newData/Mouse ID 152-3/gate_2_cluster.fcs", cols = markers)
SPADE.addClusterToFCS("data/newData/Mouse ID 158-1/gate_2_dens.fcs", "data/newData/Mouse ID 158-1/cluster_up.fcs", "data/newData/Mouse ID 158-1/gate_2_cluster.fcs", cols = markers)
SPADE.addClusterToFCS("data/newData/Mouse ID 162-1/gate_2_dens.fcs", "data/newData/Mouse ID 162-1/cluster_up.fcs", "data/newData/Mouse ID 162-1/gate_2_cluster.fcs", cols = markers)
SPADE.addClusterToFCS("data/newData/Mouse ID 162-2/gate_2_dens.fcs", "data/newData/Mouse ID 162-2/cluster_up.fcs", "data/newData/Mouse ID 162-2/gate_2_cluster.fcs", cols = markers)
SPADE.addClusterToFCS("data/newData/Mouse ID 158-5/gate_2_dens.fcs", "data/newData/Mouse ID 158-5/cluster_up.fcs", "data/newData/Mouse ID 158-5/gate_2_cluster.fcs", cols = markers)


markers <- c("fsca","fsch","fscw","ssca","ssch","sytoxred","compalexa","fcgr","sca1",
             "compbv711","lineage","Flk2")


SPADE.addDensityToFCS("data/newData/ID-3 for An/21_c.fcs","data/newData/ID-3 for An/21_c_dens4.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/ID-3 for An/22_c.fcs","data/newData/ID-3 for An/22_c_dens4.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/ID-3 for An/23_c.fcs","data/newData/ID-3 for An/23_c_dens4.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/ID-3 for An/24_c.fcs","data/newData/ID-3 for An/24_c_dens4.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/ID-3 for An/25_c.fcs","data/newData/ID-3 for An/25_c_dens4.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/ID-3 for An/26_c.fcs","data/newData/ID-3 for An/26_c_dens4.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/ID-3 for An/27_c.fcs","data/newData/ID-3 for An/27_c_dens4.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/ID-3 for An/28_c.fcs","data/newData/ID-3 for An/28_c_dens4.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/ID-3 for An/29_c.fcs","data/newData/ID-3 for An/29_c_dens4.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/ID-3 for An/30_c.fcs","data/newData/ID-3 for An/30_c_dens4.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/ID-3 for An/31_c.fcs","data/newData/ID-3 for An/31_c_dens4.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/ID-3 for An/32_c.fcs","data/newData/ID-3 for An/32_c_dens4.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/ID-3 for An/33_c.fcs","data/newData/ID-3 for An/33_c_dens4.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/ID-3 for An/34_c.fcs","data/newData/ID-3 for An/34_c_dens4.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/ID-3 for An/35_c.fcs","data/newData/ID-3 for An/35_c_dens4.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/ID-3 for An/36_c.fcs","data/newData/ID-3 for An/36_c_dens4.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/ID-3 for An/37_c.fcs","data/newData/ID-3 for An/37_c_dens4.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/ID-3 for An/38_c.fcs","data/newData/ID-3 for An/38_c_dens4.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/ID-3 for An/39_c.fcs","data/newData/ID-3 for An/39_c_dens4.fcs",cols=markers)
SPADE.addDensityToFCS("data/newData/ID-3 for An/40_c.fcs","data/newData/ID-3 for An/40_c_dens4.fcs",cols=markers)

SPADE.downsampleFCS("data/newData/ID-3 for An/21_c_dens2.fcs","data/newData/ID-3 for An/21_c_down2.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("data/newData/ID-3 for An/22_c_dens2.fcs","data/newData/ID-3 for An/22_c_down2.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("data/newData/ID-3 for An/23_c_dens2.fcs","data/newData/ID-3 for An/23_c_down2.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("data/newData/ID-3 for An/24_c_dens2.fcs","data/newData/ID-3 for An/24_c_down2.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("data/newData/ID-3 for An/25_c_dens2.fcs","data/newData/ID-3 for An/25_c_down2.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("data/newData/ID-3 for An/26_c_dens2.fcs","data/newData/ID-3 for An/26_c_down2.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("data/newData/ID-3 for An/27_c_dens2.fcs","data/newData/ID-3 for An/27_c_down2.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("data/newData/ID-3 for An/28_c_dens2.fcs","data/newData/ID-3 for An/28_c_down2.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("data/newData/ID-3 for An/29_c_dens2.fcs","data/newData/ID-3 for An/29_c_down2.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("data/newData/ID-3 for An/30_c_dens2.fcs","data/newData/ID-3 for An/30_c_down2.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("data/newData/ID-3 for An/31_c_dens2.fcs","data/newData/ID-3 for An/31_c_down2.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("data/newData/ID-3 for An/32_c_dens2.fcs","data/newData/ID-3 for An/32_c_down2.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("data/newData/ID-3 for An/33_c_dens2.fcs","data/newData/ID-3 for An/33_c_down2.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("data/newData/ID-3 for An/34_c_dens2.fcs","data/newData/ID-3 for An/34_c_down2.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("data/newData/ID-3 for An/35_c_dens2.fcs","data/newData/ID-3 for An/35_c_down2.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("data/newData/ID-3 for An/36_c_dens2.fcs","data/newData/ID-3 for An/36_c_down2.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("data/newData/ID-3 for An/37_c_dens2.fcs","data/newData/ID-3 for An/37_c_down2.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("data/newData/ID-3 for An/38_c_dens2.fcs","data/newData/ID-3 for An/38_c_down2.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("data/newData/ID-3 for An/39_c_dens2.fcs","data/newData/ID-3 for An/39_c_down2.fcs",exclude_pctile = 0.01, target_percent=0.1)
SPADE.downsampleFCS("data/newData/ID-3 for An/40_c_dens2.fcs","data/newData/ID-3 for An/40_c_down2.fcs",exclude_pctile = 0.01, target_percent=0.1)


tempdata <- exprs(read.FCS("data/newData/ID-3 for An/30_c.fcs", transformation = FALSE))
tempdata <- tempdata[1:nrow(tempdata),1:ncol(tempdata)]

tempdata2 <- exprs(read.FCS("data/newData/Mouse ID 158-5/clusters.fcs", transformation = FALSE))
tempdata2 <- tempdata2[1:nrow(tempdata2),1:ncol(tempdata2)]

tempdata1 <- exprs(read.FCS("data/newData/Mouse ID 158-5/cluster_up.fcs", transformation = FALSE))
tempdata1 <- tempdata1[1:nrow(tempdata1),1:ncol(tempdata1)]