dirs="basic_materials binoculars building_blocks default digilines dye elevator mesecons moreores pipeworks ropes technic_modpack tubelib2 wool"

for d in $dirs; do
	find "$1/$d" -name '*.lua' -type f -exec lua ./scan.lua {} \;
done
