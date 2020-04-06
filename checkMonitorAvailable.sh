#!/bin/bash

while [ 1 ]; do

  ITEM=$(curl -s 'https://www.bestbuy.com/site/dell-32-led-curved-qhd-freesync-monitor-with-hdr/6375331.p?skuId=6375331' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:74.0) Gecko/20100101 Firefox/74.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://www.bestbuy.com/site/computer-monitors/curved-monitors/pcmcat374100050018.c?id=pcmcat374100050018' -H 'Connection: keep-alive' -H 'Cookie: tfs_upg=true; UID=ec2d4907-c4fb-410c-9e5c-52568f73d00f; physical_dma=528; customerZipCode=33139|Y; oid=1613049164; _abck=62C3FCB635BE31F7BEDC94C142D5ED0C~0~YAAQrwUPF02pfDxxAQAA3/UoUAMmFptGpF6/PqgTXiE0lyc4mqctJ4pNb4OQGLU/lkQnJeZODdzfWjQvd+m17WmEty6t+y2BFSwilQ97bkMqJw9k7Fhj2X1P9dt0syeToyuJ6KwAP9wKsveSOVmSOnhI6NOIkeeXwx6tdnunP5fiMTrLPJNqmv5pSLNjKPijswYGSy+iSDjfueWQO9v+dBOMB7oV755QXroMqgH2EfovWTysOyMasf0nQqBSiq7VZWMVWlhaLejFzy3nrbFeaYTVHHFX1CoPz6oFVchaQLdnr9TZ2PS3r5fxjMIzW6omavHoFmMuzoc=~-1~-1~-1; CTT=6ce9e7448d29380a86dfa4c0de371574; SID=5defcab1-db8e-4180-9e1a-c16127a4b78d; optimizelyEndUserId=oeu1586026307454r0.9330638478858374; COM_TEST_FIX=2020-04-04T18%3A51%3A47.716Z; AMCV_F6301253512D2BDB0A490D45%40AdobeOrg=1585540135%7CMCMID%7C85609248646057200940195840961012747387%7CMCAID%7CNONE%7CMCOPTOUT-1586195194s%7CNONE%7CvVersion%7C4.4.0; c6db37d7c8add47f1af93cf219c2c682=1fa6a4e17664c5e4e66b013bceef2627; tfs_upg=true; 52245=; s_ecid=MCMID%7C85609248646057200940195840961012747387; AMCVS_F6301253512D2BDB0A490D45%40AdobeOrg=1; s_cc=true; _gcl_au=1.1.652703065.1586026312; aam_uuid=92177622227191171160834668379933566297; _cs_c=1; _cs_id=fecb1238-f613-a1e0-943e-6f3076ef2f4f.1586026312.4.1586137526.1586137497.1.1620190312281; sc-location-v2=%7B%22meta%22%3A%7B%22CreatedAt%22%3A%222020-04-04T18%3A51%3A54.567Z%22%2C%22ModifiedAt%22%3A%222020-04-06T15%3A43%3A15.780Z%22%2C%22ExpiresAt%22%3A%222021-04-06T15%3A43%3A15.780Z%22%7D%2C%22value%22%3A%22%7B%5C%22physical%5C%22%3A%7B%5C%22zipCode%5C%22%3A%5C%2233101%5C%22%2C%5C%22source%5C%22%3A%5C%22A%5C%22%2C%5C%22captureTime%5C%22%3A%5C%222020-04-06T15%3A43%3A15.533Z%5C%22%7D%2C%5C%22store%5C%22%3A%7B%5C%22zipCode%5C%22%3A%5C%2233139%5C%22%2C%5C%22searchZipCode%5C%22%3A%5C%2233101%5C%22%2C%5C%22storeId%5C%22%3A1498%2C%5C%22storeHydratedCaptureTime%5C%22%3A%5C%222020-04-06T15%3A43%3A15.780Z%5C%22%2C%5C%22userToken%5C%22%3A%5C%221d326aba-780e-11ea-a564-005056aecb16%5C%22%7D%2C%5C%22destination%5C%22%3A%7B%5C%22zipCode%5C%22%3A%5C%2233101%5C%22%7D%7D%22%7D; locDestZip=33101; locStoreId=1498; s_sq=%5B%5BB%5D%5D; CTE13=T; listFacets=undefined; basketTimestamp=1586187920645; ZPLANK=a5d8c708917d428b93ad7a8cac26b1e7; G_ENABLED_IDPS=google; bby_rdp=l; CRTOABE=1; bm_sz=D5147202B8DD2F5860F2A226643DFEC8~YAAQROVwaFlb6hlxAQAA1wGfTwerQhwQ0NxTaO1VlC9g6ifqTkLkIH0HZCRlWtEhdkN3Hm+0xTWVj4s1XuKG//eAojpZ/OIxk45diwX+irWYLym7RtpW4vzworG49/b5BXJiwO79cjG/uTUhsfDOjyqKLOEgIbcklawxM+Ji9LSDI2gQ7Gs699KV3zwN2oe84w==; aamoptsegs=aam%3D9208968; c2=Computers%20%26%20Tablets%3A%20PC%20Gaming%3A%20Gaming%20Monitors%3A%20pdp; bby_cbc_lb=p-browse-e; bby_prc_lb=p-prc-e; bby_basket_lb=p-basket-e; bby_loc_lb=p-loc-e; bby_prf_lb=p-prf-a; bby_lty_lb=p-lty-b; bby_idn_lb=p-idn-cloud; vt=9d356c0b-781d-11ea-9a2e-0e9233bf588f; gvpHeaderFooterTransition=headerFooterGvp; pst2=1498|N; ltc=%20; bby_suggest_lb=p-suggest-e' -H 'Upgrade-Insecure-Requests: 1' -H 'DNT: 1' -H 'Cache-Control: max-age=0' -H 'TE: Trailers') | grep "Add to Cart"

  TOPIC_ARN="arn:aws:sns:us-east-1:472521221391:BestBuyAlert"

        # if item exists we notify SNS topic
        if [ -z "$ITEM" ]; then
                echo "Item is sold out"
#               aws sns publish --topic-arn ${TOPIC_ARN} --message "Item is out of Stock" --region us-east-1
        else
                echo "Item is in stock"
                aws sns publish --topic-arn ${TOPIC_ARN} --message "Item is in Stock" --region us-east-1
        fi

        sleep 300
done


