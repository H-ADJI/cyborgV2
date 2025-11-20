#!/bin/bash


gum log -l info "[START] Spicetify apply"
spicetify backup apply
spicetify update
spicetify apply
gum log -l info "[DONE] Spicetify apply"
