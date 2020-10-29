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
