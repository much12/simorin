<?php

use Illuminate\Http\Request;

function JSONResponse($response = array())
{
    echo json_encode($response);
}

function JSONResponseDefault($result, $message)
{
    return JSONResponse(array(
        'RESULT' => $result,
        'MESSAGE' => $message
    ));
}

function isCurrentPage($page)
{
    if (!is_array($page) && url()->current() == url($page)) {
        return 'active';
    } else if (is_array($page)) {
        foreach ($page as $key => $value) {
            if (url()->current() !== url($value))
                continue;
            else
                return 'active';
        }
    }

    return null;
}
