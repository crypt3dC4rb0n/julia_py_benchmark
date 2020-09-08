using Images


function im2arr(im_path)
    im = load(im_path)
    return im
end

function color_balance!(img, r, g, b)
    rgb = RGB{N0f8}(r/255, g/255, b/255)
    img .+= rgb
    return img
end

function adjust_brightness(im_paths, factor)
    for im_path in im_paths
        im_arr = im2arr(im_path)
        color_balance!(im_arr, factor, factor, factor)
    end
end