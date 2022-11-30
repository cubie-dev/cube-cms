<?php

namespace App\Exceptions;

enum MessageType: string
{
    case Danger = 'danger';
    case Info = 'info';
    case Success = 'success';
    case Warning = 'warning';
}
