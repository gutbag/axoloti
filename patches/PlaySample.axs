<patch-1.0 appVersion="1.0.11">
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="filename" x="42" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="e1c92bc92f4d191bfadf0efeae4503b458a4e440" name="mux_1" x="434" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/flipflop toggle" uuid="195e489e5fc3d275944b0de56c7a91c8641ea22a" name="flipflop_2" x="294" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="wave/play stereo" uuid="843bbc92c4a45c5ba551de32538934e186dc4a41" name="play_3" x="630" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="left" x="784" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="e1c92bc92f4d191bfadf0efeae4503b458a4e440" name="mux_2" x="434" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_4" x="546" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="midinote" x="42" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="mymidinotein" uuid="f6693dab-7ee3-43c0-9a58-f71a0b8bfe06" name="mymidinotein_1" x="126" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="right" x="784" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="leveltrig" x="42" y="238">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="flipflop_2" outlet="o"/>
         <dest obj="mux_1" inlet="i1"/>
         <dest obj="mux_2" inlet="i1"/>
      </net>
      <net>
         <source obj="mux_2" outlet="o"/>
         <dest obj="inv_4" inlet="i"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="play_3" inlet="start"/>
      </net>
      <net>
         <source obj="inv_4" outlet="o"/>
         <dest obj="play_3" inlet="stop"/>
      </net>
      <net>
         <source obj="play_3" outlet="outl"/>
         <dest obj="left" inlet="outlet"/>
      </net>
      <net>
         <source obj="play_3" outlet="outr"/>
         <dest obj="right" inlet="outlet"/>
      </net>
      <net>
         <source obj="mymidinotein_1" outlet="gate"/>
         <dest obj="flipflop_2" inlet="trig"/>
         <dest obj="mux_2" inlet="i2"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="filename" outlet="inlet"/>
         <dest obj="play_3" inlet="filename"/>
      </net>
      <net>
         <source obj="leveltrig" outlet="inlet"/>
         <dest obj="mux_2" inlet="s"/>
         <dest obj="mux_1" inlet="s"/>
      </net>
      <net>
         <source obj="midinote" outlet="inlet"/>
         <dest obj="mymidinotein_1" inlet="midinote"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
      <Author></Author>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>23</y>
      <width>1280</width>
      <height>777</height>
   </windowPos>
</patch-1.0>