
run_bench() {
	$SHELLPACK_INCLUDE/shellpack-bench-thpchallenge 	\
		--min-threads $THPCHALLENGE_MIN_THREADS		\
		--max-threads $THPCHALLENGE_MAX_THREADS		\
		--thp-size    $THPCHALLENGE_THP_WSETSIZE	\
		${THPCHALLENGE_FIO_THREADS:+--fio-threads "$THPCHALLENGE_FIO_THREADS"} \
		${THPCHALLENGE_FIO_WSETSIZE:+--fio-sized "$THPCHALLENGE_FIO_WSETSIZE"} \
		${THPCHALLENGE_KBUILD_JOBS:+--kbuild-jobs "$THPCHALLENGE_KBUILD_JOBS"} \
		${THPCHALLENGE_KBUILD_WARMUP:+--kbuild-warmup "$THPCHALLENGE_KBUILD_WARMUP"}
	return $?
}
