
for((s=30; s<=60; s*=2)); do
	./abcore -ParallelDecom ../data/flickr $s > flickr_par${s}_1.txt
	./abcore -ParallelDecom ../data/flickr $s > flickr_par${s}_2.txt
	./abcore -ParallelDecom ../data/flickr $s > flickr_par${s}_3.txt

	./abcore -ParallelDecom ../data/reuters $s > reuters_par${s}_1.txt
	./abcore -ParallelDecom ../data/reuters $s > reuters_par${s}_2.txt
	./abcore -ParallelDecom ../data/reuters $s > reuters_par${s}_3.txt

	./abcore -ParallelDecom ../data/trec $s > trec_par${s}_1.txt
	./abcore -ParallelDecom ../data/trec $s > trec_par${s}_2.txt
	./abcore -ParallelDecom ../data/trec $s > trec_par${s}_3.txt

	./abcore -ParallelDecom ../data/epinions $s > epinions_par${s}_1.txt
	./abcore -ParallelDecom ../data/epinions $s > epinions_par${s}_2.txt
	./abcore -ParallelDecom ../data/epinions $s > epinions_par${s}_3.txt

	./abcore -ParallelDecom ../data/livejournal $s > livejournal_par${s}_1.txt
	./abcore -ParallelDecom ../data/livejournal $s > livejournal_par${s}_2.txt
	./abcore -ParallelDecom ../data/livejournal $s > livejournal_par${s}_3.txt

	./abcore -ParallelDecom ../data/trackers $s > trackers_par${s}_1.txt
	./abcore -ParallelDecom ../data/trackers $s > trackers_par${s}_2.txt
	./abcore -ParallelDecom ../data/trackers $s > trackers_par${s}_3.txt

	./abcore -ParallelDecom ../data/orkut $s > orkut_par${s}_1.txt
	./abcore -ParallelDecom ../data/orkut $s > orkut_par${s}_2.txt
	./abcore -ParallelDecom ../data/orkut $s > orkut_par${s}_3.txt
done



for((s=1; s<=16; s*=2)); do
	./abcore -ParallelDecom ../data/flickr $s > flickr_par${s}_1.txt
	./abcore -ParallelDecom ../data/flickr $s > flickr_par${s}_2.txt
	./abcore -ParallelDecom ../data/flickr $s > flickr_par${s}_3.txt

	./abcore -ParallelDecom ../data/reuters $s > reuters_par${s}_1.txt
	./abcore -ParallelDecom ../data/reuters $s > reuters_par${s}_2.txt
	./abcore -ParallelDecom ../data/reuters $s > reuters_par${s}_3.txt

	./abcore -ParallelDecom ../data/trec $s > trec_par${s}_1.txt
	./abcore -ParallelDecom ../data/trec $s > trec_par${s}_2.txt
	./abcore -ParallelDecom ../data/trec $s > trec_par${s}_3.txt

	./abcore -ParallelDecom ../data/epinions $s > epinions_par${s}_1.txt
	./abcore -ParallelDecom ../data/epinions $s > epinions_par${s}_2.txt
	./abcore -ParallelDecom ../data/epinions $s > epinions_par${s}_3.txt

	./abcore -ParallelDecom ../data/livejournal $s > livejournal_par${s}_1.txt
	./abcore -ParallelDecom ../data/livejournal $s > livejournal_par${s}_2.txt
	./abcore -ParallelDecom ../data/livejournal $s > livejournal_par${s}_3.txt

	./abcore -ParallelDecom ../data/trackers $s > trackers_par${s}_1.txt
	./abcore -ParallelDecom ../data/trackers $s > trackers_par${s}_2.txt
	./abcore -ParallelDecom ../data/trackers $s > trackers_par${s}_3.txt

	./abcore -ParallelDecom ../data/orkut $s > orkut_par${s}_1.txt
	./abcore -ParallelDecom ../data/orkut $s > orkut_par${s}_2.txt
	./abcore -ParallelDecom ../data/orkut $s > orkut_par${s}_3.txt
done
