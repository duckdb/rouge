# -*- coding: utf-8 -*- #
# frozen_string_literal: true

module Rouge
  module Lexers
    class SQL < RegexLexer
      title "SQL"
      desc "Structured Query Language, for relational databases"
      tag 'sql'
      filenames '*.sql'
      mimetypes 'text/x-sql'

      # list is taken from https://github.com/szarnyasg/duckdb/tree/main/third_party/libpg_query/grammar/keywords
      def self.keywords
        @keywords ||= Set.new(%w(
          ABORT
          ABS
          ABSOLUTE
          ACCESS
          ACTION
          ADA
          ADD
          ADMIN
          AFTER
          AGGREGATE
          ALIAS
          ALL
          ALLOCATE
          ALSO
          ALTER
          ALWAYS
          ANALYSE
          ANALYZE
          AND
          ANTI
          ANY
          ARE
          ARRAY
          AS
          ASC
          ASENSITIVE
          ASOF
          ASSERTION
          ASSIGNMENT
          ASYMMETRIC
          AT
          ATOMIC
          ATTACH
          ATTRIBUTE
          AUTHORIZATION
          AVG
          BACKWARD
          BEFORE
          BEGIN
          BETWEEN
          BIGINT
          BINARY
          BIT
          BIT_LENGTH
          BITVAR
          BOOLEAN
          BOTH
          BREADTH
          BY
          C
          CACHE
          CALL
          CALLED
          CARDINALITY
          CASCADE
          CASCADED
          CASE
          CAST
          CATALOG
          CATALOG_NAME
          CHAIN
          CHAR
          CHAR_LENGTH
          CHARACTER
          CHARACTER_LENGTH
          CHARACTER_SET_CATALOG
          CHARACTER_SET_NAME
          CHARACTER_SET_SCHEMA
          CHARACTERISTICS
          CHECK
          CHECKED
          CHECKPOINT
          CLASS
          CLASS_ORIGIN
          CLOB
          CLOSE
          CLUSTER
          COALESCE
          COBOL
          COLLATE
          COLLATION
          COLLATION_CATALOG
          COLLATION_NAME
          COLLATION_SCHEMA
          COLUMN
          COLUMN_NAME
          COLUMNS
          COMMAND_FUNCTION
          COMMAND_FUNCTION_CODE
          COMMENT
          COMMENTS
          COMMIT
          COMMITTED
          COMPLETION
          COMPRESSION
          CONCURRENTLY
          CONDITION_NUMBER
          CONFIGURATION
          CONFLICT
          CONNECT
          CONNECTION
          CONNECTION_NAME
          CONSTRAINT
          CONSTRAINT_CATALOG
          CONSTRAINT_NAME
          CONSTRAINT_SCHEMA
          CONSTRAINTS
          CONSTRUCTOR
          CONTAINS
          CONTENT
          CONTINUE
          CONVERSION
          CONVERT
          COPY
          CORRESPONTING
          COST
          COUNT
          CREATE
          CREATEDB
          CREATEUSER
          CROSS
          CSV
          CUBE
          CURRENT
          CURRENT_DATE
          CURRENT_PATH
          CURRENT_ROLE
          CURRENT_TIME
          CURRENT_TIMESTAMP
          CURRENT_USER
          CURSOR
          CURSOR_NAME
          CYCLE
          DATA
          DATABASE
          DATETIME_INTERVAL_CODE
          DATETIME_INTERVAL_PRECISION
          DAY
          DAYS
          DEALLOCATE
          DEC
          DECIMAL
          DECLARE
          DEFAULT
          DEFAULTS
          DEFERRABLE
          DEFERRED
          DEFINED
          DEFINER
          DELETE
          DELIMITER
          DELIMITERS
          DEPENDS
          DEREF
          DESC
          DESCRIBE
          DESCRIPTOR
          DESTROY
          DESTRUCTOR
          DETACH
          DETERMINISTIC
          DIAGNOSTICS
          DICTIONARY
          DISABLE
          DISCARD
          DISCONNECT
          DISPATCH
          DISTINCT
          DO
          DOCUMENT
          DOMAIN
          DOUBLE
          DROP
          DYNAMIC
          DYNAMIC_FUNCTION
          DYNAMIC_FUNCTION_CODE
          EACH
          ELSE
          ENABLE
          ENCODING
          ENCRYPTED
          END
          END-EXEC
          ENUM
          EQUALS
          ESCAPE
          ESCEPTION
          EVENT
          EVERY
          EXCEPT
          EXCLUDE
          EXCLUDING
          EXCLUSIVE
          EXEC
          EXECUTE
          EXISTING
          EXISTS
          EXPLAIN
          EXPORT
          EXPORT_STATE
          EXTENSION
          EXTERNAL
          EXTRACT
          false
          FALSE
          FAMILY
          FETCH
          FILTER
          FINAL
          FIRST
          FLOAT
          FOLLOWING
          FOR
          FORCE
          FOREIGN
          FORTRAN
          FORWARD
          FOUND
          FREE
          FREEZE
          FROM
          FULL
          FUNCTION
          FUNCTIONS
          G
          GENERAL
          GENERATED
          GET
          GLOB
          GLOBAL
          GO
          GOTO
          GRANT
          GRANTED
          GROUP
          GROUPING
          GROUPING_ID
          HANDLER
          HAVING
          HEADER
          HIERARCHY
          HOLD
          HOST
          HOUR
          HOURS
          IDENTITY
          IF
          IGNORE
          ILIKE
          IMMEDIATE
          IMMUTABLE
          IMPLEMENTATION
          IMPLICIT
          IMPORT
          IN
          INCLUDE
          INCLUDING
          INCREMENT
          INDEX
          INDEXES
          INDITCATOR
          INFIX
          INHERIT
          INHERITS
          INITIALIZE
          INITIALLY
          INLINE
          INNER
          INOUT
          INPUT
          INSENSITIVE
          INSERT
          INSTALL
          INSTANTIABLE
          INSTEAD
          INT
          INTEGER
          INTERSECT
          INTERVAL
          INTO
          INVOKER
          IS
          ISNULL
          ISOLATION
          ITERATE
          JOIN
          JSON
          KEY
          KEY_MEMBER
          KEY_TYPE
          LABEL
          LANCOMPILER
          LANGUAGE
          LARGE
          LAST
          LATERAL
          LEADING
          LEAKPROOF
          LEFT
          LENGTH
          LESS
          LEVEL
          LIKE
          LIMIT
          LISTEN
          LOAD
          LOCAL
          LOCALTIME
          LOCALTIMESTAMP
          LOCATION
          LOCATOR
          LOCK
          LOCKED
          LOGGED
          LOWER
          MACRO
          MAP
          MAPPING
          MATCH
          MATERIALIZED
          MAX
          MAXVALUE
          MESSAGE_LENGTH
          MESSAGE_OCTET_LENGTH
          MESSAGE_TEXT
          METHOD
          MICROSECOND
          MICROSECONDS
          MILLISECOND
          MILLISECONDS
          MIN
          MINUTE
          MINUTES
          MINVALUE
          MOD
          MODE
          MODIFIES
          MODIFY
          MONTH
          MONTHS
          MORE
          MOVE
          MUMPS
          NAME
          NAMES
          NATIONAL
          NATURAL
          NCHAR
          NCLOB
          NEW
          NEXT
          NO
          NOCREATEDB
          NOCREATEUSER
          NONE
          NOT
          NOTHING
          NOTIFY
          NOTNULL
          NOWAIT
          NULL
          NULLABLE
          NULLIF
          NULLS
          NUMERIC
          OBJECT
          OCTET_LENGTH
          OF
          OFF
          OFFSET
          OIDS
          OLD
          ON
          ONLY
          OPEN
          OPERATION
          OPERATOR
          OPTION
          OPTIONS
          OR
          ORDER
          ORDINALITY
          OUT
          OUTER
          OUTPUT
          OVER
          OVERLAPS
          OVERLAY
          OVERRIDING
          OWNED
          OWNER
          PAD
          PARALLEL
          PARAMATER_NAME
          PARAMATER_ORDINAL_POSITION
          PARAMATER_SPECIFIC_SCHEMA
          PARAMETER
          PARAMETER_MODE
          PARAMETER_SPECIFIC_CATALOG
          PARAMETER_SPECIFIC_NAME
          PARAMETERS
          PARSER
          PARTIAL
          PARTITION
          PASCAL
          PASSING
          PASSWORD
          PENDANT
          PERCENT
          PIVOT
          PIVOT_LONGER
          PIVOT_WIDER
          PLACING
          PLANS
          PLI
          POLICY
          POSITION
          POSITIONAL
          POSTFIX
          PRAGMA
          PRECEDING
          PRECISION
          PREFIX
          PREORDER
          PREPARE
          PREPARED
          PRESERVE
          PRIMARY
          PRIOR
          PRIVILEGES
          PROCEDURAL
          PROCEDURE
          PROGRAM
          PUBLIC
          PUBLICATION
          QUALIFY
          QUOTE
          RANGE
          READ
          READS
          REAL
          REASSIGN
          RECHECK
          RECURSIVE
          REF
          REFERENCES
          REFERENCING
          REFRESH
          REINDEX
          RELATIVE
          RELEASE
          RENAME
          REPEATABLE
          REPLACE
          REPLICA
          RESET
          RESPECT
          RESTART
          RESTRICT
          RESULT
          RETURN
          RETURNED_LENGTH
          RETURNED_OCTET_LENGTH
          RETURNED_SQLSTATE
          RETURNING
          RETURNS
          REVOKE
          RIGHT
          ROLE
          ROLLBACK
          ROLLUP
          ROUTINE
          ROUTINE_CATALOG
          ROUTINE_NAME
          ROUTINE_SCHEMA
          ROW
          ROW_COUNT
          ROWS
          RULE
          SAMPLE
          SAVE_POINT
          SAVEPOINT
          SCALE
          SCHEMA
          SCHEMA_NAME
          SCHEMAS
          SCOPE
          SCROLL
          SEARCH
          SECOND
          SECONDS
          SECURITY
          SELECT
          SELF
          SEMI
          SENSITIVE
          SEQUENCE
          SEQUENCES
          SERIALIZABLE
          SERVER
          SERVER_NAME
          SESSION
          SESSION_USER
          SET
          SETOF
          SETS
          SHARE
          SHOW
          SIMILAR
          SIMPLE
          SIZE
          SKIP
          SMALLINT
          SNAPSHOT
          SOME
          SOURCE
          SPACE
          SPECIFIC
          SPECIFIC_NAME
          SPECIFICTYPE
          SQL
          SQLCODE
          SQLERROR
          SQLEXCEPTION
          SQLSTATE
          SQLWARNINIG
          STABLE
          STANDALONE
          START
          STATE
          STATEMENT
          STATIC
          STATISTICS
          STDIN
          STDOUT
          STORAGE
          STORED
          STRICT
          STRIP
          STRUCT
          STRUCTURE
          STYPE
          SUBCLASS_ORIGIN
          SUBLIST
          SUBSCRIPTION
          SUBSTRING
          SUM
          SUMMARIZE
          SYMMETRIC
          SYSID
          SYSTEM
          SYSTEM_USER
          TABLE
          TABLE_NAME
          TABLES
          TABLESAMPLE
          TABLESPACE
          TEMP
          TEMPLATE
          TEMPORARY
          TERMINATE
          TEXT
          THAN
          THEN
          TIME
          TIMESTAMP
          TIMEZONE_HOUR
          TIMEZONE_MINUTE
          TO
          TOAST
          TRAILING
          TRANSACTION
          TRANSACTIONS_COMMITTED
          TRANSACTIONS_ROLLED_BACK
          TRANSATION
          TRANSATION_ACTIVE
          TRANSFORM
          TRANSFORMS
          TRANSLATE
          TRANSLATION
          TREAT
          TRIGGER
          TRIGGER_CATALOG
          TRIGGER_NAME
          TRIGGER_SCHEMA
          TRIM
          true
          TRUE
          TRUNCATE
          TRUSTED
          TRY_CAST
          TYPE
          TYPES
          UNBOUNDED
          UNCOMMITTED
          UNDER
          UNENCRYPTED
          UNION
          UNIQUE
          UNKNOWN
          UNLISTEN
          UNLOGGED
          UNNAMED
          UNNEST
          UNPIVOT
          UNTIL
          UPDATE
          UPPER
          USAGE
          USE
          USER
          USER_DEFINED_TYPE_CATALOG
          USER_DEFINED_TYPE_NAME
          USER_DEFINED_TYPE_SCHEMA
          USING
          VACUUM
          VALID
          VALIDATE
          VALIDATOR
          VALUE
          VALUES
          VARCHAR
          VARIABLE
          VARIADIC
          VARYING
          VERBOSE
          VERSION
          VIEW
          VIEWS
          VIRTUAL
          VOLATILE
          WHEN
          WHENEVER
          WHERE
          WHITESPACE
          WINDOW
          WITH
          WITHIN
          WITHOUT
          WORK
          WRAPPER
          WRITE
          XML
          XMLATTRIBUTES
          XMLCONCAT
          XMLELEMENT
          XMLEXISTS
          XMLFOREST
          XMLNAMESPACES
          XMLPARSE
          XMLPI
          XMLROOT
          XMLSERIALIZE
          XMLTABLE
          YEAR
          YEARS
          YES
          ZONE
          # misc
          # CSV
          AUTO_DETECT
          FORMAT
          READ_ONLY
          # parquet
          PARQUET
          UNCOMPRESSED
          SNAPPY
          GZIP
          LZO
          BROTLI
          LZ4
          ZSTD
          FIELD_IDS
          ROW_GROUP_SIZE
          PARTITION_BY
          OVERWRITE_OR_IGNORE
          FILENAME_PATTERN
          USE_TMP_FILE
          # JSON
          AUTO
          UNSTRUCTURED
          NEWLINE_DELIMITED
          # geospatial
          GDAL
          DRIVER
          LAYER_CREATION_OPTIONS
          # iceberg
          ALLOW_MOVED_PATHS
      ))
      end

      def self.keywords_type
        # Use the `extract_type_names.py` script in the repository root to generate this list
        @keywords_type ||= Set.new(%w(
          BIGINT
          BINARY
          BIT
          BITSTRING
          BLOB
          BOOL
          BOOLEAN
          BPCHAR
          BYTEA
          CHAR
          DATE
          DATETIME
          DEC
          DECIMAL
          DOUBLE
          ENUM
          FLOAT
          FLOAT4
          FLOAT8
          GUID
          HUGEINT
          INT
          INT1
          INT128
          INT16
          INT2
          INT32
          INT4
          INT64
          INT8
          INTEGER
          INTEGRAL
          INTERVAL
          LIST
          LOGICAL
          LONG
          MAP
          NULL
          NUMERIC
          NVARCHAR
          OID
          REAL
          ROW
          SHORT
          SIGNED
          SMALLINT
          SQLNULL
          STRING
          STRUCT
          TEXT
          TIME
          TIMESTAMP
          TIMESTAMPTZ
          TIMESTAMP_MS
          TIMESTAMP_NS
          TIMESTAMP_S
          TIMESTAMP_SEC
          TIMESTAMP_TZ
          TIMESTAMP_US
          TIMETZ
          TIME_TZ
          TINYINT
          UBIGINT
          UINT16
          UINT32
          UINT64
          UINT8
          UINTEGER
          #UNION #excluded manually to avoid confusion with UNION ALL
          USMALLINT
          UTINYINT
          UUID
          VARBINARY
          VARCHAR
          ARRAY
          # geospatial
          GEOMETRY
          POINT
          LINESTRING
          POLYGON
          MULTIPOINT
          MULTILINESTRING
          MULTIPOLYGON
          GEOMETRYCOLLECTION
          POINT_2D
          LINESTRING_2D
          POLYGON_2D
          BOX_2D
          WKB_BLOB
          GeometryType
        ))
      end

      def self.function_names
        # Use the `extract_type_names.py` script in the repository root to generate this list
        @function_names ||= Set.new(%w(
          !__postfix
          &
          **
          <<
          >>
          @
          ^@
          acos
          age
          alias
          approx_count_distinct
          approx_quantile
          arg_max
          arg_min
          ascii
          asin
          atan
          atan2
          avg
          bar
          bin
          bit_and
          bit_count
          bit_or
          bit_position
          bit_xor
          bitstring
          bitstring_agg
          bool_and
          bool_or
          cardinality
          cbrt
          ceil
          century
          chr
          coalesce
          corr
          cos
          cot
          count
          covar_pop
          covar_samp
          current_database
          current_date
          current_query
          current_schema
          current_schemas
          current_setting
          damerau_levenshtein
          date_diff
          date_part
          date_sub
          date_trunc
          day
          dayname
          dayofmonth
          dayofweek
          dayofyear
          decade
          decode
          degrees
          element_at
          encode
          entropy
          enum_code
          enum_first
          enum_last
          enum_range
          enum_range_boundary
          epoch
          epoch_ms
          epoch_ns
          epoch_us
          era
          error
          even
          exp
          favg
          flatten
          floor
          format
          format_bytes
          from_base64
          gamma
          generate_series
          get_bit
          get_current_time
          get_current_timestamp
          greatest
          greatest_common_divisor
          hamming
          hash
          hex
          histogram
          hour
          ifnull
          in_search_path
          instr
          isfinite
          isinf
          isnan
          isodow
          isoyear
          jaccard
          jaro_similarity
          jaro_winkler_similarity
          julian
          kahan_sum
          kurtosis
          last_day
          least
          least_common_multiple
          left
          left_grapheme
          levenshtein
          lgamma
          list
          list_aggregate
          list_any_value
          list_append
          list_concat
          list_contains
          list_cosine_similarity
          list_distance
          list_distinct
          list_dot_product
          list_extract
          list_filter
          list_grade_up
          list_has_all
          list_has_any
          list_intersect
          list_position
          list_prepend
          list_resize
          list_reverse
          list_reverse_sort
          list_select
          list_slice
          list_sort
          list_transform
          list_unique
          list_value
          list_where
          list_zip
          ln
          log10
          log2
          lpad
          ltrim
          mad
          make_date
          make_time
          make_timestamp
          map
          map_concat
          map_entries
          map_extract
          map_from_entries
          map_keys
          map_values
          max
          md5
          md5_number
          md5_number_lower
          md5_number_upper
          median
          microsecond
          millennium
          millisecond
          min
          minute
          mode
          month
          monthname
          nextafter
          pi
          printf
          product
          quantile_cont
          quantile_disc
          quarter
          radians
          random
          range
          regr_avgx
          regr_avgy
          regr_count
          regr_intercept
          regr_r2
          regr_slope
          regr_sxx
          regr_sxy
          regr_syy
          repeat
          replace
          reservoir_quantile
          reverse
          right
          right_grapheme
          round
          rpad
          rtrim
          second
          sem
          set_bit
          setseed
          sha256
          sign
          signbit
          sin
          skewness
          sqrt
          stats
          stddev_pop
          stddev_samp
          strftime
          string_agg
          string_split
          string_split_regex
          strptime
          struct_insert
          struct_pack
          sum
          sum_no_overflow
          tan
          time_bucket
          timezone
          timezone_hour
          timezone_minute
          to_base
          to_base64
          to_days
          to_hours
          to_microseconds
          to_milliseconds
          to_minutes
          to_months
          to_seconds
          to_timestamp
          to_years
          translate
          trim
          trunc
          try_strptime
          txid_current
          typeof
          unbin
          unhex
          unicode
          union_extract
          union_tag
          union_value
          uuid
          var_pop
          var_samp
          vector_type
          version
          week
          weekday
          weekofyear
          xor
          year
          yearweek
          |
          ~
          # geospatial
          ST_Area
          ST_Area
          ST_Area_Spheroid
          ST_AsGeoJSON
          ST_AsText
          ST_AsWKB
          ST_Boundary
          ST_Buffer
          ST_Centroid
          ST_Collect
          ST_CollectionExtract
          ST_Contains
          ST_ContainsProperly
          ST_ConvexHull
          ST_CoveredBy
          ST_Covers
          ST_Crosses
          ST_Difference
          ST_Dimension
          ST_Disjoint
          ST_Distance
          ST_Distance_Spheroid
          ST_DWithin
          ST_DWithin_Spheroid
          ST_Envelope
          ST_Equals
          ST_Extent
          ST_ExteriorRing
          ST_FlipCoordinates
          ST_GeometryType
          ST_GeomFromGeoJSON
          ST_GeomFromText
          ST_GeomFromWKB
          ST_Intersection
          ST_Intersects
          ST_IsClosed
          ST_IsEmpty
          ST_IsRing
          ST_IsSimple
          ST_IsValid
          ST_Length
          ST_Length_Spheroid
          ST_MakeLine
          ST_Normalize
          ST_Overlaps
          ST_Perimeter
          ST_Perimeter_Spheroid
          ST_PointN
          ST_PointOnSurface
          ST_ReducePrecision
          ST_RemoveRepeatedPoints
          ST_Simplify
          ST_SimplifyPreserveTopology
          ST_Touches
          ST_Transform
          ST_Union
          ST_Within
          ST_X
          ST_Xmax
          ST_Xmin
          ST_Y
          ST_Ymax
          ST_Ymin
          # tpch, tpcds
          dbgen
          dsdgen
          # samples
          reservoir
          bernoulli
          system
          # array
          array_aggregate
          array_any_value
          array_append
          array_concat
          array_contains
          array_cosine_similarity
          array_cross_product
          array_distance
          array_distinct
          array_dot_product
          array_extract
          array_filter
          array_grade_up
          array_has_all
          array_has_any
          array_inner_product
          array_intersect
          array_position
          array_prepend
          array_resize
          array_reverse
          array_reverse_sort
          array_select
          array_slice
          array_sort
          array_transform
          array_unique
          array_value
          array_where
          array_zip
          # formats
          read_csv
          read_csv_auto
          read_parquet
          read_json_auto
          # extension functions from https://github.com/duckdb/duckdb/blob/main/src/include/duckdb/main/extension_entries.hpp
          add_parquet_key
          array_to_json
          create_fts_index
          current_localtime
          current_localtimestamp
          dbgen
          drop_fts_index
          dsdgen
          excel_text
          from_json
          from_json_strict
          from_substrait
          from_substrait_json
          fuzz_all_functions
          fuzzyduck
          get_substrait
          get_substrait_json
          host
          iceberg_metadata
          iceberg_scan
          iceberg_snapshots
          icu_calendar_names
          icu_sort_key
          json
          json_array
          json_array_length
          json_contains
          json_deserialize_sql
          json_execute_serialized_sql
          json_extract
          json_extract_path
          json_extract_path_text
          json_extract_string
          json_group_array
          json_group_object
          json_group_structure
          json_keys
          json_merge_patch
          json_object
          json_quote
          json_serialize_plan
          json_serialize_sql
          json_structure
          json_transform
          json_transform_strict
          json_type
          json_valid
          load_aws_credentials
          make_timestamptz
          parquet_kv_metadata
          parquet_metadata
          parquet_scan
          parquet_schema
          pg_clear_cache
          pg_timezone_names
          postgres_attach
          postgres_query
          postgres_scan
          postgres_scan_pushdown
          read_json
          read_json_auto
          read_json_objects
          read_json_objects_auto
          read_ndjson
          read_ndjson_auto
          read_ndjson_objects
          read_parquet
          reduce_sql_statement
          row_to_json
          scan_arrow_ipc
          sql_auto_complete
          sqlite_attach
          sqlite_scan
          sqlsmith
          st_area
          st_area_spheroid
          st_asgeojson
          st_ashexwkb
          st_astext
          st_aswkb
          st_boundary
          st_buffer
          st_centroid
          st_collect
          st_collectionextract
          st_contains
          st_containsproperly
          st_convexhull
          st_coveredby
          st_covers
          st_crosses
          st_difference
          st_dimension
          st_disjoint
          st_distance
          st_distance_spheroid
          st_drivers
          st_dump
          st_dwithin
          st_dwithin_spheroid
          st_endpoint
          st_envelope
          st_envelope_agg
          st_equals
          st_extent
          st_exteriorring
          st_flipcoordinates
          st_geometrytype
          st_geomfromgeojson
          st_geomfromhexewkb
          st_geomfromhexwkb
          st_geomfromtext
          st_geomfromwkb
          st_intersection
          st_intersection_agg
          st_intersects
          st_intersects_extent
          st_isclosed
          st_isempty
          st_isring
          st_issimple
          st_isvalid
          st_length
          st_length_spheroid
          st_linemerge
          st_linestring2dfromwkb
          st_list_proj_crs
          st_makeenvelope
          st_makeline
          st_makepolygon
          st_ngeometries
          st_ninteriorrings
          st_normalize
          st_npoints
          st_numgeometries
          st_numinteriorrings
          st_numpoints
          st_overlaps
          st_perimeter
          st_perimeter_spheroid
          st_point
          st_point2d
          st_point2dfromwkb
          st_point3d
          st_point4d
          st_pointn
          st_pointonsurface
          st_polygon2dfromwkb
          st_reverse
          st_read
          st_readosm
          st_reduceprecision
          st_removerepeatedpoints
          st_simplify
          st_simplifypreservetopology
          st_startpoint
          st_touches
          st_transform
          st_union
          st_union_agg
          st_within
          st_x
          st_xmax
          st_xmin
          st_y
          st_ymax
          st_ymin
          stem
          text
          to_arrow_ipc
          to_json
          tpcds
          tpcds_answers
          tpcds_queries
          tpch
          tpch_answers
          tpch_queries
          # pragmas
          show_tables
          # window function aggregates
          cume_dist
          first
          first_value
          lag
          last
          last_value
          lead
          nth_value
          ntile
          percent_rank
          rank_dense
          rank
          row_number
        ))
      end

      state :root do
        rule %r/\s+/m, Text
        rule %r/--.*/, Comment::Single
        rule %r(/\*), Comment::Multiline, :multiline_comments
        rule %r/\d+/, Num::Integer
        rule %r/'/, Str::Single, :single_string
        # A double-quoted string refers to a database object in our default SQL
        # dialect, which is appropriate for e.g. PostgreSQL and DuckDB.
        rule %r/"/, Name::Variable, :double_string
        rule %r/`/, Name::Variable, :backtick

        rule %r/\w[\w\d]*/ do |m|
          if self.class.keywords_type.include? m[0]
            token Name::Builtin
          elsif self.class.function_names.include? m[0]
            token Name::Function
          elsif self.class.keywords.include? m[0]
            token Keyword
          else
            token Name
          end
        end

        rule %r([+*/<>=~!@#%&|?^-]), Operator
        rule %r/[;:()\[\]\{\},.]/, Punctuation
      end

      state :multiline_comments do
        rule %r(/[*]), Comment::Multiline, :multiline_comments
        rule %r([*]/), Comment::Multiline, :pop!
        rule %r([^/*]+), Comment::Multiline
        rule %r([/*]), Comment::Multiline
      end

      state :backtick do
        rule %r/\\./, Str::Escape
        rule %r/``/, Str::Escape
        rule %r/`/, Name::Variable, :pop!
        rule %r/[^\\`]+/, Name::Variable
      end

      state :single_string do
        rule %r/\\./, Str::Escape
        rule %r/''/, Str::Escape
        rule %r/'/, Str::Single, :pop!
        rule %r/[^\\']+/, Str::Single
      end

      state :double_string do
        rule %r/\\./, Str::Escape
        rule %r/""/, Str::Escape
        rule %r/"/, Name::Variable, :pop!
        rule %r/[^\\"]+/, Name::Variable
      end
    end
  end
end
