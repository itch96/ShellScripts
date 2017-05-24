#!/bin/sh
newString() {
	echo $@ | rev
}
newString $@
