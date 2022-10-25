# GIS Delivery - Version 21.1.1 - July 6, 2021

This directory contains the final outputs of the GIS application that were delivered for PostGIS processing on 7/6/2021.

## Files

The following files are stored here: [AWS Outputs S3 Directory](https://s3.console.aws.amazon.com/s3/buckets/envelope-gis-storage/gis-build-archive/Delivery_21.1.1/?region=us-east-1&tab=overview)

* `osgis_outputs.backup`: A backup of the `osgis_outputs` database for this build. This database contains all necessary tables required for downstream processing.
* `inputs.backup`: A backup of the `inputs` database for this build. This database can be used to reproduce the `osgis_outputs` database by processing it using the `envelopegis.tools.processblocks` processing tool.

## Change Summary

### Code Changes

* Enhanced the Pluto Template tool to better handle multi-part geometries. See [PR #97](https://github.com/envelopecity/osgis/pull/97) for more information.
* Corrected several issues detected in build 20.5.1 (issues listed below). See [PR #102](https://github.com/envelopecity/osgis/pull/102) for more information.
    * Null values in `inCorn`, `shortBlock` and other fields. [Issue #98](https://github.com/envelopecity/osgis/issues/98)
    * Missing sublot slivers. [Issue #99](https://github.com/envelopecity/osgis/issues/99)
	* Null values in `stWidthMin`, `stWidthMax`, and `stWidthAvg` attributes. [Issue #100](https://github.com/envelopecity/osgis/issues/100)
	* Degenerate line segment error. [Issue #101](https://github.com/envelopecity/osgis/issues/101)
* Enhancements for restarting interrupted build processes. See [PR #129](https://github.com/envelopecity/osgis/pull/129) for more information.


### Data Changes

| Table | User Name | Change Date | Change Description |
| ----------- | ----------- | ----------- | ----------- |
| aligned_lots | brian | 05/17/2021 | Updated primary lots template and aligned lots with latest geometries from Pluto 21v1. |
| building_footprints | brian | 05/14/2021 | Imported latest building footprint data from NYC OpenData.Publishing date 5/10/21. |
| building_footprints | brian | 05/20/2021 | Updated building footprints with latest data from NYC OpenData. Last update date 5/10/21. |
| bulk_regulations | rachel | 05/07/2021 | Changes from workspace ws_insights: minor edits to retail streets, bulk and sidewalk widening codes per https://github.com/envelopecity/testing/issues/426 |
| city_blocks | brian | 05/12/2021 | Updated city blocks layer for Pluto 21v1. Part of https://github.com/envelopecity/osgis/issues/105 |
| commercial_overlay | brian | 06/02/2021 | Updated the commercial overlay and zoning district layer with the latest data from NYC DCP. Release: April 2021, includes council resolutions through 4/29/2021. |
| commercial_overlay_aligned | brian | 06/07/2021 | Updated aligned commercial overlays with the latest geometries from Pluto 21v1. Added and removed 177 polygons. |
| commercial_overlay_aligned | brian | 06/07/2021 | Adjusted commercial overlay boundaries for the April 2021 release of zoning district data. Removed 8 polygons, added 15. See https://github.com/envelopecity/osgis/pull/127 for more information. |
| corner_lots | brian | 05/05/2021 | Added a missing corner area around lot NY-MN-1361-30 as part of fixing issue https://github.com/envelopecity/testing/issues/423 |
| corner_lots | brian | 05/20/2021 | Updated corner lots data with latest geometries from Pluto 21v1. Removed 1180 polygons, added 1157 polygons. |
| dtm_polygons | brian | 04/09/2021 | Updated with the latest version from NYC DOF. Last updated (per DOF): March 30, 2021. |
| dtm_tax_lot_face | brian | 04/10/2021 | Initial data load from DOF. Citation date 3/30/2021. |
| flood_zones | rachel | 06/01/2021 | Changes from workspace ws_floodzones: Fixed errors in flood zone data https://github.com/envelopecity/testing/issues/427 |
| inclusionary_housing | rachel | 03/15/2021 | Changes from workspace ws_testing407: https://github.com/envelopecity/testing/issues/407 |
| inclusionary_housing | rachel | 03/29/2021 | Changes from workspace ws_rezonings: https://github.com/envelopecity/testing/issues/411 |
| inclusionary_housing | rachel | 05/10/2021 | Changes from workspace ws_testing422: new MX-21 SPD, and two MIH areas from https://github.com/envelopecity/testing/issues/422 |
| inclusionary_housing | rachel | 06/14/2021 | Changes from workspace ws_testing428: drew boundaries from https://github.com/envelopecity/testing/issues/428 |
| lion | brian | 05/13/2021 | Updated LION street centerlines to version 21A, published 2-22-21. |
| lot_depth_areas | brian | 05/25/2021 | Reprocess lot depth areas for Pluto 21v1. 13,936 polygons were removed from the dataset and 13,919 were added. |
| lot_edges | brian | 05/24/2021 | Updated lot edges for Pluto 21v1. 66,279 edges were removed, 67,128 edges were added. |
| parks_buffer | brian | 05/25/2021 | Updated physical blocks buffer with latest geoms from Pluto 21v1. Did not update parks_buffer because there were no changes to the inputs. |
| physical_block_lines | brian | 05/12/2021 | Updated physical block lines with latest data from Pluto 21v1. 3112 lines were removed - 3079 lines were added. Part of https://github.com/envelopecity/osgis/issues/104 |
| physical_blocks | brian | 05/12/2021 | Updated physical blocks layer with latest geometries from Pluto 21v1. Part of https://github.com/envelopecity/osgis/issues/103 |
| physical_blocks_buffer | brian | 05/25/2021 | Updated physical blocks buffer with latest geoms from Pluto 21v1. Did not update parks_buffer because there were no changes to the inputs. |
| pluto | brian | 04/12/2021 | Updated the pluto dataset to version 20v1. |
| pluto_template | brian | 05/11/2021 | Updated pluto template to pluto 21v1. |
| primary_lots_template | brian | 05/17/2021 | Updated primary lots template and aligned lots with latest geometries from Pluto 21v1. |
| primary_lots_template | brian | 06/16/2021 | Reprocessed the primary lots template layer to reflect recent updates to the flood zones dataset. |
| relaxed_lots | brian | 04/20/2021 | Updated the relaxed lots table with the latest relaxed lots from Pluto 21v1. Removed 9,677 lots, added 10,330 lots (the increase in lots is due to a few new blocks being added that have never been relaxed before). |
| retail_streets | rachel | 05/07/2021 | Changes from workspace ws_insights: minor edits to retail streets, bulk and sidewalk widening codes per https://github.com/envelopecity/testing/issues/426 |
| retail_streets | rachel | 06/14/2021 | Changes from workspace ws_testing428: drew boundaries from https://github.com/envelopecity/testing/issues/428 |
| short_block_areas | brian | 05/24/2021 | Updated short block areas for Pluto 21v1. Added 164 polygons, removed 155 polygons. |
| sidewalk_widening | rachel | 05/07/2021 | Changes from workspace ws_insights: minor edits to retail streets, bulk and sidewalk widening codes per https://github.com/envelopecity/testing/issues/426 |
| snap_grid | brian | 06/03/2021 | Updated snap grid lines for Pluto 21v1. Deleted 642 edges, imported 616 edges. |
| snap_grid | brian | 06/03/2021 | Added 32 new snap grid lines based on the April 2021 zoning district release. |
| snap_grid_buffers | brian | 06/03/2021 | Updated snap grid buffers for Pluto 21v1 and the April 2011 zoning district release. Removed 642 polygons, added 648 polygons. |
| special_purpose_districts | rachel | 05/04/2021 | Changes from workspace ws_subdistrictcodes: minor edits SPD and subdistrict layers alongside frontend translation edits in https://github.com/envelopecity/frontend/pull/1254  |
| special_purpose_districts | rachel | 05/10/2021 | Changes from workspace ws_testing422: new MX-21 SPD, and two MIH areas from https://github.com/envelopecity/testing/issues/422 |
| special_purpose_districts | rachel | 06/14/2021 | Changes from workspace ws_testing428: drew boundaries from https://github.com/envelopecity/testing/issues/428 |
| special_purpose_subdistricts | rachel | 05/04/2021 | Changes from workspace ws_subdistrictcodes: minor edits SPD and subdistrict layers alongside frontend translation edits in https://github.com/envelopecity/frontend/pull/1254  |
| street_edges | brian | 05/18/2021 | Updated the street edges layer with geometries for Pluto 21v1. |
| street_edges_template | brian | 05/17/2021 | Reprocessed street edges template layer for latest geometries from Pluto 21v1. |
| street_lots | brian | 05/17/2021 | Updated street lots with latest geometries from Pluto 21v1. |
| street_measurements | brian | 05/28/2021 | Processed street measurements for Pluto 21v1. |
| street_walls | rachel | 04/07/2021 | Changes from workspace ws_streetwalls: fixing SPD streetwall codes in MP,  PI,  MID & DB - https://github.com/envelopecity/testing/issues/416  |
| subareas | rachel | 03/29/2021 | Changes from workspace ws_rezonings: https://github.com/envelopecity/testing/issues/411 |
| wide_100_buffer | brian | 05/25/2021 | Updated wide street layers for Pluto 21v1 geometries. |
| wide_125_buffer | brian | 05/25/2021 | Updated wide street layers for Pluto 21v1 geometries. |
| zoning_districts | brian | 06/02/2021 | Updated the commercial overlay and zoning district layer with the latest data from NYC DCP. Release: April 2021, includes council resolutions through 4/29/2021. |
| zoning_districts_aligned | brian | 06/16/2021 | Updated the aligned zoning districts for the latest release (April 2021). |

### Zoning District Changes

#### BX

* The eastern side of block NY-BX-2426 was rezoned from `M1-1` to `R7X`
    * ![image](https://user-images.githubusercontent.com/7058936/120494348-5b023180-c381-11eb-937c-a4d31c59c3a0.png)

* Commercial overlay areas on block NY-BX-3054 were resized.
    * ![image](https://user-images.githubusercontent.com/7058936/120385887-93f0c680-c2ed-11eb-9ed5-270c702574cc.png)
* A `C2-4` commercial overlay area was added to block NY-BX-2426.
    * ![image](https://user-images.githubusercontent.com/7058936/120386135-de724300-c2ed-11eb-8130-51cad296d084.png)


#### MN

* A `C2-5` commercial overlay area was resized on block NY-MN-1326
    * ![image](https://user-images.githubusercontent.com/7058936/120383661-c3520400-c2ea-11eb-94e2-d2fb418619c0.png)
* Three `C2-5` commercial overlay areas were reshaped on blocks NY-MN-1436 and NY-MN-1437
    * ![image](https://user-images.githubusercontent.com/7058936/120384095-5723d000-c2eb-11eb-946b-d2369f9d63ac.png)
* Two `C1-5` commercial overlay areas were reshaped on block NY-MN-1407
    * ![image](https://user-images.githubusercontent.com/7058936/120384414-be418480-c2eb-11eb-9392-0d2e5211fe5c.png)


#### BK

* An `R6A` and `R7A` zoning district areas were added to block NY-BK-6087
    * ![image](https://user-images.githubusercontent.com/7058936/120387497-9d7b2e00-c2ef-11eb-9bbc-51a084aabaa9.png)
* An `R7A` area was added to blocks NY-BK-5492 and NY-BK-5516
    * ![image](https://user-images.githubusercontent.com/7058936/120387764-ec28c800-c2ef-11eb-99d8-84979028f5c9.png)
* An `R5` zoning district area was adjusted on block NY-BK-8235
    * ![image](https://user-images.githubusercontent.com/7058936/120388343-9e608f80-c2f0-11eb-9b2c-a55089e0e598.png)
* A portion of an `R6` zoning district was cut out of block NY-BK-3603, and that area was split into two new zones, an `M1-4/R7A` area and an `M1-4/R6A` area
    * ![image](https://user-images.githubusercontent.com/7058936/120490562-1e810680-c37e-11eb-9f46-6533c7ddca1b.png)
* An `R7D` zoning district area was added to the northern end of block NY-BK-5159
    * ![image](https://user-images.githubusercontent.com/7058936/120490971-79b2f900-c37e-11eb-9a73-4a22dcdc7bda.png)
* The eastern end of block NY-BK-5322 was rezoned from `C8-2` to `R8A`
    * ![image](https://user-images.githubusercontent.com/7058936/120491545-f34ae700-c37e-11eb-8d10-bcb7bd8bec0b.png)
* The northern end of block NY-BK-652 was rezoned from `M1-1D` to `R8A`
    * ![image](https://user-images.githubusercontent.com/7058936/120491954-491f8f00-c37f-11eb-807d-b08e0054c9c3.png)
* Block NY-QN-15698 was rezoned from `PARK` to `R4-1`
    * ![image](https://user-images.githubusercontent.com/7058936/120495470-5a1dcf80-c382-11eb-99f3-542a4c50815b.png)


* Two new `C2-4` commercial overlay areas were added to blocks NY-BK-5492 and NY-BK-5516.
    * ![image](https://user-images.githubusercontent.com/7058936/120372666-14f39200-c2dd-11eb-9a3f-cd24c1b50585.png)
* A new `C2-4` area was added to the southern corner of block NY-BK-6087
    * ![image](https://user-images.githubusercontent.com/7058936/120372876-584e0080-c2dd-11eb-88e8-a63e615e851a.png)
* A `C2-4` commercial overlay area was reduced on block NY-BK-5322
    * ![image](https://user-images.githubusercontent.com/7058936/120373168-a531d700-c2dd-11eb-8e1d-ef2d72897ad6.png)
* A new `C2-4` commercial overlay area was added to block NY-BK-652
    * ![image](https://user-images.githubusercontent.com/7058936/120374003-9992e000-c2de-11eb-92ea-5a69ee5945d1.png)
* A `C2-4` commercial overlay area on block NY-BK-2380 was expanded to the eastern corner of the block.
    * ![image](https://user-images.githubusercontent.com/7058936/120375698-afa1a000-c2e0-11eb-9a90-92601e5194c9.png)
* A `C1-4` commercial overlay area was added to the northwestern end of block NY-BK-2305
    * ![image](https://user-images.githubusercontent.com/7058936/120375867-e11a6b80-c2e0-11eb-919b-1ac5c5ebabc3.png)



#### QN

* A `PARK` area was added near (but not in) block NY-QN-15606
    * ![image](https://user-images.githubusercontent.com/7058936/120388007-3316bd80-c2f0-11eb-870f-5aa8c780dda6.png)
* An `M1-4/R6` zoning district area was added to blocks NY-QN-15862 and NY-QN-15606
    * ![image](https://user-images.githubusercontent.com/7058936/120388189-6a856a00-c2f0-11eb-9538-03a85c617298.png)
* The northwest corner of block NY-QN-1972 was rezoned from `R6b` to `R6`
    * ![image](https://user-images.githubusercontent.com/7058936/120492590-d2cf5c80-c37f-11eb-8485-ede33999543e.png)
* The northwest corner of block NY-QN-3104 was rezoned from `R4` to `R7A`
    * ![image](https://user-images.githubusercontent.com/7058936/120492807-01e5ce00-c380-11eb-93ff-eff5566c723e.png)
* A portion of the southern edge of block NY-QN-119 was rezoned from `M1-1` to `R6A`
    * ![image](https://user-images.githubusercontent.com/7058936/120493194-5b4dfd00-c380-11eb-9c54-de8996f789b0.png)
* The southern ends of blocks NY-QN-685 and NY-QN-701 were rezoned from `R5` to `R6A`
    * ![image](https://user-images.githubusercontent.com/7058936/120493466-98b28a80-c380-11eb-9d13-3cf0d905a533.png)
* A portion of the northern end of block NY-QN-4962 was rezoned from `C4-2` and `M3-1` to `M1-2/R7-1`
    * ![image](https://user-images.githubusercontent.com/7058936/120493965-05c62000-c381-11eb-8ffe-ffb1d9eb2c72.png)
* The northwest corner of block NY-QN-16226 was rezoned from `R5` to `R4A`
    * ![image](https://user-images.githubusercontent.com/7058936/120495834-ac5ef080-c382-11eb-9624-5c545e17c5a6.png)


* A `C2-4` commercial overlay are was removed from block NY-QN-10024
    * ![image](https://user-images.githubusercontent.com/7058936/120374241-eecef180-c2de-11eb-8c09-03fc66baf939.png)
* A `C1-2` commercial overlay area was reduced in size on the eastern side of block NY-QN-15842
    * ![image](https://user-images.githubusercontent.com/7058936/120372023-46b82900-c2dc-11eb-9656-f773e454eba2.png)
* The area on the southern end of block NY-QN-8659 was rezoned from `C1-3` to `C2-3`
    * ![image](https://user-images.githubusercontent.com/7058936/120374649-6ef55700-c2df-11eb-9ac0-c3fad166edb9.png)
* A new `C2-3` commercial overlay area was added to the northern end of NY-QN-10673
    * ![image](https://user-images.githubusercontent.com/7058936/120375091-fcd14200-c2df-11eb-83e8-5fefb898346a.png)
* A `C2-2` commercial overlay area on block NY-QN-3104 was split and the northern portion was rezoned as `C2-3`
    * ![image](https://user-images.githubusercontent.com/7058936/120375313-4588fb00-c2e0-11eb-9c04-37a515850028.png)


#### SI

* Zoning district boundaries in southern SI have various adjustments (only one change appears to be an actual rezoning - the rest appear to be accuracy improvements)
    * ![image](https://user-images.githubusercontent.com/7058936/120387093-16c65100-c2ef-11eb-90c9-6afbf005daa4.png)

* Two `C1-3` commercial overlay areas were reduced in size along NY-SI-579 and NY-SI-576
    * ![image](https://user-images.githubusercontent.com/7058936/120371267-2a67bc80-c2db-11eb-824b-82ab882935bc.png)
