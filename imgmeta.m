%Sanjana Srinivasan
%image meta data
function c = imgmeta(img)
    meta= imfinfo(img)
    c = struct('bitdepth', meta.BitDepth, 'size', meta.FileSize, 'date', meta.FileModDate, 'description', meta.ImageDescription)
end
