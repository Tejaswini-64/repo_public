#!/bin/bash

cd "$(dirname "$0")/.." || exit 1

today=$(date '+%Y%m%d')
reports_dir="reports"
archive_dir="archive"
output_file="${archive_dir}/metrics_${today}.tar.gz"

mkdir -p "$archive_dir"

find "$reports_dir" -name "metrics_${today}_*.txt" -print0 | tar --null -czvf "$output_file" --files-from=-

find "$reports_dir" -name "metrics_${today}_*.txt" -delete

