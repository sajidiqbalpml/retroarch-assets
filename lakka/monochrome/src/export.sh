for dim in 256; do
	for src in *.svg; do
		echo $src;
		export dest=`echo $src | sed "s/.svg/.png/"`
		mkdir -p ../$dim
		inkscape -z -C -w $dim -h $dim -f "$src" -e "../$dim/$dest"
		#rsvg-convert -b none -w $dim -h $dim "$src" -o "../$dim/$dest"
		#convert -density 360 -background none "$src" "../$dim/$dest"
		#convert "../$dim/$dest" -write mpr:temp -background black -alpha Remove mpr:temp -compose Copy_Opacity -composite "../$dim/$dest"
		#python2 ../../NPMApng2PMApng.py "../$dim/$dest" "../$dim/$dest"
	done
done
