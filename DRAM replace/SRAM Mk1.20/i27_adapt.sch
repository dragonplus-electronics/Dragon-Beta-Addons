<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="DINA4_L">
<frame x1="0" y1="0" x2="264.16" y2="180.34" columns="4" rows="4" layer="94" border-left="no" border-top="no" border-right="no" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94" font="vector">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94" font="vector">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94" font="vector">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94" font="vector">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94" font="vector">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94" font="vector">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94" font="vector">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94" font="vector">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="DINA4_L" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, landscape with extra doc field</description>
<gates>
<gate name="G$1" symbol="DINA4_L" x="0" y="0"/>
<gate name="G$2" symbol="DOCFIELD" x="162.56" y="0" addlevel="must"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pal-phs">
<description>&lt;b&gt;PALs&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL20">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="12.7" y1="2.921" x2="-12.7" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-2.921" x2="12.7" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="12.7" y1="2.921" x2="12.7" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="2.921" x2="-12.7" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-2.921" x2="-12.7" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.016" x2="-12.7" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="11.43" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="17" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="18" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="19" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="20" x="-11.43" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-13.081" y="-3.048" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="-9.779" y="-0.381" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="DIL20-R">
<wire x1="12.7" y1="2.921" x2="-12.7" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-2.921" x2="12.7" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="12.7" y1="2.921" x2="12.7" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="2.921" x2="-12.7" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-2.921" x2="-12.7" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.016" x2="-12.7" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-11.43" y="-3.81" drill="0.8128" rot="R90"/>
<pad name="2" x="-8.89" y="-3.81" drill="0.8128" rot="R90"/>
<pad name="7" x="3.81" y="-3.81" drill="0.8128" rot="R90"/>
<pad name="8" x="6.35" y="-3.81" drill="0.8128" rot="R90"/>
<pad name="3" x="-6.35" y="-3.81" drill="0.8128" rot="R90"/>
<pad name="4" x="-3.81" y="-3.81" drill="0.8128" rot="R90"/>
<pad name="6" x="1.27" y="-3.81" drill="0.8128" rot="R90"/>
<pad name="5" x="-1.27" y="-3.81" drill="0.8128" rot="R90"/>
<pad name="9" x="8.89" y="-3.81" drill="0.8128" rot="R90"/>
<pad name="10" x="11.43" y="-3.81" drill="0.8128" rot="R90"/>
<pad name="11" x="11.43" y="3.81" drill="0.8128" rot="R90"/>
<pad name="12" x="8.89" y="3.81" drill="0.8128" rot="R90"/>
<pad name="13" x="6.35" y="3.81" drill="0.8128" rot="R90"/>
<pad name="14" x="3.81" y="3.81" drill="0.8128" rot="R90"/>
<pad name="15" x="1.27" y="3.81" drill="0.8128" rot="R90"/>
<pad name="16" x="-1.27" y="3.81" drill="0.8128" rot="R90"/>
<pad name="17" x="-3.81" y="3.81" drill="0.8128" rot="R90"/>
<pad name="18" x="-6.35" y="3.81" drill="0.8128" rot="R90"/>
<pad name="19" x="-8.89" y="3.81" drill="0.8128" rot="R90"/>
<pad name="20" x="-11.43" y="3.81" drill="0.8128" rot="R90"/>
<text x="-13.081" y="-3.048" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="-9.779" y="-0.381" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="16V8">
<wire x1="-7.62" y1="15.24" x2="7.62" y2="15.24" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-15.24" x2="7.62" y2="15.24" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-15.24" x2="-7.62" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="15.24" x2="-7.62" y2="-15.24" width="0.4064" layer="94"/>
<text x="-7.62" y="15.875" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-17.78" size="1.778" layer="96">&gt;VALUE</text>
<pin name="I0" x="-12.7" y="7.62" length="middle" direction="in"/>
<pin name="I1" x="-12.7" y="5.08" length="middle" direction="in"/>
<pin name="I2" x="-12.7" y="2.54" length="middle" direction="in"/>
<pin name="I3" x="-12.7" y="0" length="middle" direction="in"/>
<pin name="I4" x="-12.7" y="-2.54" length="middle" direction="in"/>
<pin name="I5" x="-12.7" y="-5.08" length="middle" direction="in"/>
<pin name="I6" x="-12.7" y="-7.62" length="middle" direction="in"/>
<pin name="I7" x="-12.7" y="-10.16" length="middle" direction="in"/>
<pin name="OE/I8" x="-12.7" y="-12.7" length="middle" direction="in" function="dot"/>
<pin name="O1" x="12.7" y="5.08" length="middle" function="dot" rot="R180"/>
<pin name="O2" x="12.7" y="2.54" length="middle" function="dot" rot="R180"/>
<pin name="O3" x="12.7" y="0" length="middle" function="dot" rot="R180"/>
<pin name="O4" x="12.7" y="-2.54" length="middle" function="dot" rot="R180"/>
<pin name="O5" x="12.7" y="-5.08" length="middle" function="dot" rot="R180"/>
<pin name="O6" x="12.7" y="-7.62" length="middle" function="dot" rot="R180"/>
<pin name="O7" x="12.7" y="-10.16" length="middle" function="dot" rot="R180"/>
<pin name="O0" x="12.7" y="7.62" length="middle" function="dot" rot="R180"/>
<pin name="CLK" x="-12.7" y="12.7" length="middle" direction="in" function="clk"/>
</symbol>
<symbol name="PWRN">
<text x="-0.635" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="-5.842" size="1.27" layer="95" rot="R90">GND</text>
<text x="1.905" y="2.667" size="1.27" layer="95" rot="R90">VCC</text>
<pin name="GND" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="VCC" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="16V8" prefix="IC" uservalue="yes">
<description>&lt;b&gt;PAL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="16V8" x="0" y="0"/>
<gate name="P" symbol="PWRN" x="-30.48" y="0" addlevel="request"/>
</gates>
<devices>
<device name="" package="DIL20">
<connects>
<connect gate="G$1" pin="CLK" pad="1"/>
<connect gate="G$1" pin="I0" pad="2"/>
<connect gate="G$1" pin="I1" pad="3"/>
<connect gate="G$1" pin="I2" pad="4"/>
<connect gate="G$1" pin="I3" pad="5"/>
<connect gate="G$1" pin="I4" pad="6"/>
<connect gate="G$1" pin="I5" pad="7"/>
<connect gate="G$1" pin="I6" pad="8"/>
<connect gate="G$1" pin="I7" pad="9"/>
<connect gate="G$1" pin="O0" pad="12"/>
<connect gate="G$1" pin="O1" pad="13"/>
<connect gate="G$1" pin="O2" pad="14"/>
<connect gate="G$1" pin="O3" pad="15"/>
<connect gate="G$1" pin="O4" pad="16"/>
<connect gate="G$1" pin="O5" pad="17"/>
<connect gate="G$1" pin="O6" pad="18"/>
<connect gate="G$1" pin="O7" pad="19"/>
<connect gate="G$1" pin="OE/I8" pad="11"/>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="GAL16V8D-7LPN" constant="no"/>
<attribute name="OC_FARNELL" value="9699740" constant="no"/>
<attribute name="OC_NEWARK" value="97K0449" constant="no"/>
</technology>
</technologies>
</device>
<device name="-ROUND" package="DIL20-R">
<connects>
<connect gate="G$1" pin="CLK" pad="1"/>
<connect gate="G$1" pin="I0" pad="2"/>
<connect gate="G$1" pin="I1" pad="3"/>
<connect gate="G$1" pin="I2" pad="4"/>
<connect gate="G$1" pin="I3" pad="5"/>
<connect gate="G$1" pin="I4" pad="6"/>
<connect gate="G$1" pin="I5" pad="7"/>
<connect gate="G$1" pin="I6" pad="8"/>
<connect gate="G$1" pin="I7" pad="9"/>
<connect gate="G$1" pin="O0" pad="12"/>
<connect gate="G$1" pin="O1" pad="13"/>
<connect gate="G$1" pin="O2" pad="14"/>
<connect gate="G$1" pin="O3" pad="15"/>
<connect gate="G$1" pin="O4" pad="16"/>
<connect gate="G$1" pin="O5" pad="17"/>
<connect gate="G$1" pin="O6" pad="18"/>
<connect gate="G$1" pin="O7" pad="19"/>
<connect gate="G$1" pin="OE/I8" pad="11"/>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead-round">
<description>&lt;b&gt;Pin Header Connector with round pads&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;
Modified by P.Harvey-Smith.</description>
<packages>
<package name="1X05">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0.635" x2="6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon" rot="R90"/>
<pad name="2" x="-2.54" y="0" drill="1.016" shape="octagon" rot="R90"/>
<pad name="3" x="0" y="0" drill="1.016" shape="octagon" rot="R90"/>
<pad name="4" x="2.54" y="0" drill="1.016" shape="octagon" rot="R90"/>
<pad name="5" x="5.08" y="0" drill="1.016" shape="octagon" rot="R90"/>
<text x="-6.4262" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.35" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="-5.334" y1="-0.254" x2="-4.826" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
</package>
<package name="1X05/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-6.35" y1="-1.905" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="6.985" x2="-5.08" y2="1.27" width="0.762" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="6.985" x2="-2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="6.985" x2="0" y2="1.27" width="0.762" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="6.985" x2="2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0.635" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="6.985" x2="5.08" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-5.08" y="-3.81" drill="1.016" shape="octagon" rot="R90"/>
<pad name="2" x="-2.54" y="-3.81" drill="1.016" shape="octagon" rot="R90"/>
<pad name="3" x="0" y="-3.81" drill="1.016" shape="octagon" rot="R90"/>
<pad name="4" x="2.54" y="-3.81" drill="1.016" shape="octagon" rot="R90"/>
<pad name="5" x="5.08" y="-3.81" drill="1.016" shape="octagon" rot="R90"/>
<text x="-6.985" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="8.255" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-5.461" y1="0.635" x2="-4.699" y2="1.143" layer="21"/>
<rectangle x1="-2.921" y1="0.635" x2="-2.159" y2="1.143" layer="21"/>
<rectangle x1="-0.381" y1="0.635" x2="0.381" y2="1.143" layer="21"/>
<rectangle x1="2.159" y1="0.635" x2="2.921" y2="1.143" layer="21"/>
<rectangle x1="4.699" y1="0.635" x2="5.461" y2="1.143" layer="21"/>
<rectangle x1="-5.461" y1="-2.921" x2="-4.699" y2="-1.905" layer="21"/>
<rectangle x1="-2.921" y1="-2.921" x2="-2.159" y2="-1.905" layer="21"/>
<rectangle x1="-0.381" y1="-2.921" x2="0.381" y2="-1.905" layer="21"/>
<rectangle x1="2.159" y1="-2.921" x2="2.921" y2="-1.905" layer="21"/>
<rectangle x1="4.699" y1="-2.921" x2="5.461" y2="-1.905" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="PINHD5">
<wire x1="-6.35" y1="-7.62" x2="1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="1.27" y2="7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="7.62" x2="-6.35" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="7.62" x2="-6.35" y2="-7.62" width="0.4064" layer="94"/>
<text x="-6.35" y="8.255" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X5" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD5" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X05">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X05/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="FRAME1" library="frames" deviceset="DINA4_L" device=""/>
<part name="I27_SOCKET" library="pal-phs" deviceset="16V8" device="-ROUND"/>
<part name="I27" library="pal-phs" deviceset="16V8" device="-ROUND"/>
<part name="JP1" library="pinhead-round" deviceset="PINHD-1X5" device="/90"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="FRAME1" gate="G$2" x="162.56" y="0"/>
<instance part="I27_SOCKET" gate="G$1" x="71.12" y="132.08"/>
<instance part="I27" gate="G$1" x="137.16" y="132.08"/>
<instance part="JP1" gate="A" x="116.84" y="88.9"/>
</instances>
<busses>
</busses>
<nets>
<net name="VMA" class="0">
<segment>
<pinref part="I27_SOCKET" gate="G$1" pin="CLK"/>
<wire x1="43.18" y1="144.78" x2="58.42" y2="144.78" width="0.1524" layer="91"/>
<label x="45.72" y="144.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="I27" gate="G$1" pin="CLK"/>
<wire x1="109.22" y1="144.78" x2="124.46" y2="144.78" width="0.1524" layer="91"/>
<label x="111.76" y="144.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="MUX_A19" class="0">
<segment>
<pinref part="I27_SOCKET" gate="G$1" pin="I0"/>
<wire x1="43.18" y1="139.7" x2="58.42" y2="139.7" width="0.1524" layer="91"/>
<label x="45.72" y="139.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="I27" gate="G$1" pin="I0"/>
<wire x1="109.22" y1="139.7" x2="124.46" y2="139.7" width="0.1524" layer="91"/>
<label x="111.76" y="139.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="MUX_A18" class="0">
<segment>
<pinref part="I27_SOCKET" gate="G$1" pin="I1"/>
<wire x1="43.18" y1="137.16" x2="58.42" y2="137.16" width="0.1524" layer="91"/>
<label x="45.72" y="137.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="I27" gate="G$1" pin="I1"/>
<wire x1="109.22" y1="137.16" x2="124.46" y2="137.16" width="0.1524" layer="91"/>
<label x="111.76" y="137.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="MUX_A17" class="0">
<segment>
<pinref part="I27_SOCKET" gate="G$1" pin="I2"/>
<wire x1="43.18" y1="134.62" x2="58.42" y2="134.62" width="0.1524" layer="91"/>
<label x="45.72" y="134.62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="I27" gate="G$1" pin="I2"/>
<wire x1="109.22" y1="134.62" x2="124.46" y2="134.62" width="0.1524" layer="91"/>
<label x="111.76" y="134.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="MUX_A0" class="0">
<segment>
<pinref part="I27_SOCKET" gate="G$1" pin="I3"/>
<wire x1="43.18" y1="132.08" x2="58.42" y2="132.08" width="0.1524" layer="91"/>
<label x="45.72" y="132.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="I27" gate="G$1" pin="I3"/>
<wire x1="109.22" y1="132.08" x2="124.46" y2="132.08" width="0.1524" layer="91"/>
<label x="111.76" y="132.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="E1" class="0">
<segment>
<pinref part="I27_SOCKET" gate="G$1" pin="I4"/>
<wire x1="43.18" y1="129.54" x2="58.42" y2="129.54" width="0.1524" layer="91"/>
<label x="45.72" y="129.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="I27" gate="G$1" pin="I4"/>
<wire x1="109.22" y1="129.54" x2="124.46" y2="129.54" width="0.1524" layer="91"/>
<label x="111.76" y="129.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="MUX_R!W!" class="0">
<segment>
<pinref part="I27_SOCKET" gate="G$1" pin="I5"/>
<wire x1="43.18" y1="127" x2="58.42" y2="127" width="0.1524" layer="91"/>
<label x="45.72" y="127" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="I27" gate="G$1" pin="I5"/>
<wire x1="109.22" y1="127" x2="124.46" y2="127" width="0.1524" layer="91"/>
<label x="111.76" y="127" size="1.778" layer="95"/>
</segment>
</net>
<net name="!RAS_STRB" class="0">
<segment>
<pinref part="I27_SOCKET" gate="G$1" pin="I6"/>
<wire x1="43.18" y1="124.46" x2="58.42" y2="124.46" width="0.1524" layer="91"/>
<label x="45.72" y="124.46" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="I27" gate="G$1" pin="I6"/>
<wire x1="109.22" y1="124.46" x2="124.46" y2="124.46" width="0.1524" layer="91"/>
<label x="111.76" y="124.46" size="1.778" layer="95"/>
</segment>
</net>
<net name="MA7" class="0">
<segment>
<pinref part="I27_SOCKET" gate="G$1" pin="I7"/>
<wire x1="43.18" y1="121.92" x2="58.42" y2="121.92" width="0.1524" layer="91"/>
<label x="45.72" y="121.92" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="I27" gate="G$1" pin="I7"/>
<wire x1="109.22" y1="121.92" x2="124.46" y2="121.92" width="0.1524" layer="91"/>
<label x="111.76" y="121.92" size="1.778" layer="95"/>
</segment>
</net>
<net name="I32_P11" class="0">
<segment>
<pinref part="I27_SOCKET" gate="G$1" pin="OE/I8"/>
<wire x1="43.18" y1="119.38" x2="58.42" y2="119.38" width="0.1524" layer="91"/>
<label x="45.72" y="119.38" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="I27" gate="G$1" pin="OE/I8"/>
<wire x1="109.22" y1="119.38" x2="124.46" y2="119.38" width="0.1524" layer="91"/>
<label x="111.76" y="119.38" size="1.778" layer="95"/>
</segment>
</net>
<net name="!RAMBANK2" class="0">
<segment>
<pinref part="I27_SOCKET" gate="G$1" pin="O0"/>
<wire x1="83.82" y1="139.7" x2="96.52" y2="139.7" width="0.1524" layer="91"/>
<label x="86.36" y="139.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="I27" gate="G$1" pin="O0"/>
<wire x1="149.86" y1="139.7" x2="162.56" y2="139.7" width="0.1524" layer="91"/>
<label x="152.4" y="139.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP1" gate="A" pin="4"/>
<wire x1="88.9" y1="86.36" x2="114.3" y2="86.36" width="0.1524" layer="91"/>
<label x="91.44" y="86.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="!RAMBANK3" class="0">
<segment>
<pinref part="I27_SOCKET" gate="G$1" pin="O1"/>
<wire x1="83.82" y1="137.16" x2="96.52" y2="137.16" width="0.1524" layer="91"/>
<label x="86.36" y="137.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="I27" gate="G$1" pin="O1"/>
<wire x1="149.86" y1="137.16" x2="162.56" y2="137.16" width="0.1524" layer="91"/>
<label x="152.4" y="137.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP1" gate="A" pin="3"/>
<wire x1="88.9" y1="88.9" x2="114.3" y2="88.9" width="0.1524" layer="91"/>
<label x="91.44" y="88.9" size="1.778" layer="95"/>
</segment>
</net>
<net name="!RAMBANK1" class="0">
<segment>
<pinref part="I27_SOCKET" gate="G$1" pin="O2"/>
<wire x1="83.82" y1="134.62" x2="96.52" y2="134.62" width="0.1524" layer="91"/>
<label x="86.36" y="134.62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="I27" gate="G$1" pin="O2"/>
<wire x1="149.86" y1="134.62" x2="162.56" y2="134.62" width="0.1524" layer="91"/>
<label x="152.4" y="134.62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP1" gate="A" pin="5"/>
<wire x1="88.9" y1="83.82" x2="114.3" y2="83.82" width="0.1524" layer="91"/>
<label x="91.44" y="83.82" size="1.778" layer="95"/>
</segment>
</net>
<net name="!RAMBANK4" class="0">
<segment>
<pinref part="I27_SOCKET" gate="G$1" pin="O3"/>
<wire x1="83.82" y1="132.08" x2="96.52" y2="132.08" width="0.1524" layer="91"/>
<label x="86.36" y="132.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="I27" gate="G$1" pin="O3"/>
<wire x1="149.86" y1="132.08" x2="162.56" y2="132.08" width="0.1524" layer="91"/>
<label x="152.4" y="132.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP1" gate="A" pin="2"/>
<wire x1="88.9" y1="91.44" x2="114.3" y2="91.44" width="0.1524" layer="91"/>
<label x="91.44" y="91.44" size="1.778" layer="95"/>
</segment>
</net>
<net name="!RAM_WE" class="0">
<segment>
<pinref part="I27_SOCKET" gate="G$1" pin="O4"/>
<wire x1="83.82" y1="129.54" x2="96.52" y2="129.54" width="0.1524" layer="91"/>
<label x="86.36" y="129.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="I27" gate="G$1" pin="O4"/>
<wire x1="149.86" y1="129.54" x2="162.56" y2="129.54" width="0.1524" layer="91"/>
<label x="152.4" y="129.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP1" gate="A" pin="1"/>
<wire x1="88.9" y1="93.98" x2="114.3" y2="93.98" width="0.1524" layer="91"/>
<label x="91.44" y="93.98" size="1.778" layer="95"/>
</segment>
</net>
<net name="R1DX_CE" class="0">
<segment>
<pinref part="I27_SOCKET" gate="G$1" pin="O5"/>
<wire x1="83.82" y1="127" x2="96.52" y2="127" width="0.1524" layer="91"/>
<label x="86.36" y="127" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="I27" gate="G$1" pin="O5"/>
<wire x1="149.86" y1="127" x2="162.56" y2="127" width="0.1524" layer="91"/>
<label x="152.4" y="127" size="1.778" layer="95"/>
</segment>
</net>
<net name="R2DX_CE" class="0">
<segment>
<pinref part="I27_SOCKET" gate="G$1" pin="O6"/>
<wire x1="83.82" y1="124.46" x2="96.52" y2="124.46" width="0.1524" layer="91"/>
<label x="86.36" y="124.46" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="I27" gate="G$1" pin="O6"/>
<wire x1="149.86" y1="124.46" x2="162.56" y2="124.46" width="0.1524" layer="91"/>
<label x="152.4" y="124.46" size="1.778" layer="95"/>
</segment>
</net>
<net name="I27_MA7" class="0">
<segment>
<pinref part="I27_SOCKET" gate="G$1" pin="O7"/>
<wire x1="83.82" y1="121.92" x2="96.52" y2="121.92" width="0.1524" layer="91"/>
<label x="86.36" y="121.92" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="I27" gate="G$1" pin="O7"/>
<wire x1="149.86" y1="121.92" x2="162.56" y2="121.92" width="0.1524" layer="91"/>
<label x="152.4" y="121.92" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
