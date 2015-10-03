#!/bin/sh

cd $(rospack find rosjp_201510)/bags

jsk_data get -p 2015-09-29-18-24-24_multisense_images_human_front.bag
