#!/usr/bin/php
<?php

$parts=explode(':',`git ls-remote --get-url origin`);
$host=trim($parts[0]);
$dir =trim($parts[1]);

passthru("ssh $host 'git -C $dir status'");
