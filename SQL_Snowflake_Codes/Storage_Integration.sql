create or replace storage integration s3_init
    TYPE = EXTERNAL_STAGE
    STORAGE_PROVIDER = S3
    ENABLED = TRUE
    STORAGE_AWS_ROLE_ARN = 'mention role arn here' //craeted a separate role that arn
    STORAGE_ALLOWED_LOCATIONS = ('s3://spotify-etl-snowflake-project-sateesh')
     COMMENT = 'creating connection to s3';


desc storage integration s3_init;

/*
after creating storage integration we are desc the properties and here now we have to copy 
STORAGE_AWS_EXTERNAL_ID then have to go into role created i.e., snowflake-s3-connection from 
their we have to navigate to trust relationships page and here in the code 'sts:ExternalId' is 
replaced by 'STORAGE_AWS_EXTERNAL_ID' and 'AWS' is replaced by 'STORAGE_AWS_IAM_USER_ARN' 
so that we can build s3 and snnowflake trust relationship.
*/