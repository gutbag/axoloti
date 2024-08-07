<patch-1.0 appVersion="1.0.11">
   <obj type="midi/in/pgm" uuid="6165409901fee4a0781b41bac3513f51c2120d67" name="pgm_1" x="14" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/load i" uuid="b79124f5b7d1e8b39e187677ddab6260ce8c60a3" name="load_1" x="126" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="midi/in/monitor" uuid="b51863ca-6afa-4d29-acfd-c8c2fe06cb16" name="monitor_1" x="14" y="84">
      <params>
         <bool32.tgl name="ControlChange" value="1"/>
         <bool32.tgl name="Note" value="1"/>
         <bool32.tgl name="ProgramChange" value="1"/>
         <bool32.tgl name="Bend" value="1"/>
         <bool32.tgl name="PolyPressure" value="1"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="pgm_1" outlet="o"/>
         <dest obj="load_1" inlet="i"/>
      </net>
      <net>
         <source obj="pgm_1" outlet="trig"/>
         <dest obj="load_1" inlet="trig"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>2</MidiChannel>
      <HasMidiChannelSelector>true</HasMidiChannelSelector>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[Some notes]]></notes>
   <windowPos>
      <x>-306</x>
      <y>-678</y>
      <width>669</width>
      <height>339</height>
   </windowPos>
</patch-1.0>