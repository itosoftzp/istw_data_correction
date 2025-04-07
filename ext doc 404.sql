R-EXT-2504-000004
'e625cf51-fd66-44dd-9c52-27c6904301bf/e625cf51-fd66-44dd-9c52-27c6904301bf'.pdf

R-EXT-2504-000003
'e26ffb9e-b653-4b00-8928-d83f7cac88c2/e26ffb9e-b653-4b00-8928-d83f7cac88c2'.pdf

R-EXT-2504-000002
'cfa84fb0-dab9-4934-bd0c-226d6fe8d98c/cfa84fb0-dab9-4934-bd0c-226d6fe8d98c'.pdf

R-EXT-2504-000001
'f96a0679-4333-4629-b86c-b8a6f0b85584/f96a0679-4333-4629-b86c-b8a6f0b85584'.pdf

R-EXT-2503-000044
'0d473793-1d1e-489a-a04c-f42c509f1cfe/0d473793-1d1e-489a-a04c-f42c509f1cfe'.pdf

R-EXT-2503-000043
'9e75e28c-f8d1-437f-b79d-1adb32a4afb6/9e75e28c-f8d1-437f-b79d-1adb32a4afb6'.pdf

R-EXT-2503-000042
'c2163889-8057-4b1c-b072-48d00c87d81e/c2163889-8057-4b1c-b072-48d00c87d81e'.pdf

R-EXT-2503-000041
'3c735a55-015e-4442-b780-7fa7b603ebc7/3c735a55-015e-4442-b780-7fa7b603ebc7'.pdf

-- check document external status

select distinct c_status from app_fd_ds_document_order;


select distinct c_status from app_fd_ds_tilaka_api_signs;

select c_status, id from app_fd_ds_document_order where id in (
'e625cf51-fd66-44dd-9c52-27c6904301bf',
'e26ffb9e-b653-4b00-8928-d83f7cac88c2',
'cfa84fb0-dab9-4934-bd0c-226d6fe8d98c',
'f96a0679-4333-4629-b86c-b8a6f0b85584',
'0d473793-1d1e-489a-a04c-f42c509f1cfe',
'9e75e28c-f8d1-437f-b79d-1adb32a4afb6',
'c2163889-8057-4b1c-b072-48d00c87d81e',
'3c735a55-015e-4442-b780-7fa7b603ebc7'
);


select c_status, id from app_fd_ds_tilaka_api_signs where c_tilaka_request_id in (
'e625cf51-fd66-44dd-9c52-27c6904301bf',
'e26ffb9e-b653-4b00-8928-d83f7cac88c2',
'cfa84fb0-dab9-4934-bd0c-226d6fe8d98c',
'f96a0679-4333-4629-b86c-b8a6f0b85584',
'0d473793-1d1e-489a-a04c-f42c509f1cfe',
'9e75e28c-f8d1-437f-b79d-1adb32a4afb6',
'c2163889-8057-4b1c-b072-48d00c87d81e',
'3c735a55-015e-4442-b780-7fa7b603ebc7'
);

select c_final_tilaka_doc from app_fd_ds_tilaka_api_calls where id in (
'e625cf51-fd66-44dd-9c52-27c6904301bf',
'e26ffb9e-b653-4b00-8928-d83f7cac88c2',
'cfa84fb0-dab9-4934-bd0c-226d6fe8d98c',
'f96a0679-4333-4629-b86c-b8a6f0b85584',
'0d473793-1d1e-489a-a04c-f42c509f1cfe',
'9e75e28c-f8d1-437f-b79d-1adb32a4afb6',
'c2163889-8057-4b1c-b072-48d00c87d81e',
'3c735a55-015e-4442-b780-7fa7b603ebc7'
);


