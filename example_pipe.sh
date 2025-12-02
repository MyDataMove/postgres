export PGPASSWORD=admin && \
build/bin/pg_dump -U postgres -h 127.0.0.1 -d archie_local -t e2etestlocal.view_metadata --rename-schema placeholder_schema --no-password --format=c \
 | build/bin/pg_restore -U postgres -h 127.0.0.1 -d archie_local --replace 'placeholder_schema:test_import' --no-password -v
