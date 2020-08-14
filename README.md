The environment is would basically need 
```
$ ruby graphql.rb 
```
To show the output of the program


The Given question is:
```
    Using the GitHub API (graphql), write a program that analyzes the GitHub org “google”, https://github.com/google Retrieve all opensource repos Analyze the languages each repo is written in and Output the following to a CSV file to be used as time-series data that can be plotted on a graph.
    
    1. the 5 most common languages used in the org.
    2. the 5 least used languages in the org.
    3. the repo name, language, and created date.
```
- The first step in achieving the target would be to possibliy get all the public repositories that are sorted in the ascending order 

so the api that can be used for that would be 
```
   https://api.github.com/users/google/repos?direction=asc&type=public
```


The documentation that is very important for me to use the v3 api that is very helpful for me in solving the answer to the question

```
   https://developer.github.com/v3/repos/#list-repositories-for-a-user
```




the output final of the hash format is 
```
{:language=>"Python", :created=>"2020-07-16T01:54:32Z", :repo_name=>"uncertainty-baselines"}
{:language=>"Python", :created=>"2020-05-20T15:01:35Z", :repo_name=>"uncertainty-metrics"}
{:language=>"HTML", :created=>"2016-12-01T17:36:31Z", :repo_name=>"uniflow-polymer"}
{:language=>"Objective-C", :created=>"2017-12-05T23:02:56Z", :repo_name=>"unigem-objective-c"}
{:language=>"HTML", :created=>"2016-07-29T11:29:06Z", :repo_name=>"unimorph"}
{:language=>nil, :created=>"2019-09-15T21:10:26Z", :repo_name=>"uninum"}
{:language=>"C++", :created=>"2014-10-15T20:46:09Z", :repo_name=>"universal-dash-transmuxer"}
{:language=>"Python", :created=>"2018-08-15T19:51:45Z", :repo_name=>"unrestricted-adversarial-examples"}
{:language=>"C++", :created=>"2019-06-21T21:36:13Z", :repo_name=>"unsmear"}
{:language=>"Python", :created=>"2017-10-24T15:23:16Z", :repo_name=>"upvote"}
{:language=>"Dart", :created=>"2013-07-09T21:15:44Z", :repo_name=>"uri.dart"}
{:language=>nil, :created=>"2014-09-26T16:44:12Z", :repo_name=>"uribeacon"}
{:language=>"Python", :created=>"2013-10-07T19:51:48Z", :repo_name=>"url_diff"}
{:language=>"Perl", :created=>"2016-08-02T20:23:32Z", :repo_name=>"us-altgr-intl"}
{:language=>"Python", :created=>"2015-09-17T22:23:46Z", :repo_name=>"usbinfo"}
{:language=>"C", :created=>"2019-04-15T19:16:09Z", :repo_name=>"usbmon"}
{:language=>"C++", :created=>"2019-07-19T20:26:52Z", :repo_name=>"usd_from_gltf"}
{:language=>"Go", :created=>"2016-02-12T22:17:59Z", :repo_name=>"uuid"}
{:language=>"Python", :created=>"2020-06-16T17:29:47Z", :repo_name=>"uv-metrics"}
{:language=>"Python", :created=>"2018-03-23T19:52:38Z", :repo_name=>"vae-seq"}
{:language=>"JavaScript", :created=>"2019-01-16T23:16:14Z", :repo_name=>"vapso"}
{:language=>"C++", :created=>"2017-03-14T06:25:59Z", :repo_name=>"varstruct"}
{:language=>"Assembly", :created=>"2020-06-10T16:25:58Z", :repo_name=>"vbootrom"}
{:language=>"Emacs Lisp", :created=>"2019-02-23T21:53:42Z", :repo_name=>"vc-defer"}
{:language=>"Go", :created=>"2016-01-04T19:37:24Z", :repo_name=>"vectorio"}
{:language=>"Dart", :created=>"2013-04-12T19:46:07Z", :repo_name=>"vector_math.dart"}
{:language=>"C++", :created=>"2019-11-07T00:04:47Z", :repo_name=>"verible"}
{:language=>"Perl", :created=>"2017-09-11T20:22:30Z", :repo_name=>"verilogpp"}
{:language=>"Vim script", :created=>"2015-01-20T19:16:44Z", :repo_name=>"vim-codefmt"}
{:language=>"Vim script", :created=>"2016-02-29T18:25:18Z", :repo_name=>"vim-codereview"}
{:language=>"Vim script", :created=>"2015-04-22T21:56:07Z", :repo_name=>"vim-colorscheme-primary"}
{:language=>"Vim script", :created=>"2015-04-20T14:05:05Z", :repo_name=>"vim-coverage"}
{:language=>"VimL", :created=>"2014-08-18T14:56:37Z", :repo_name=>"vim-ft-go"}
{:language=>"VimL", :created=>"2014-03-17T18:12:17Z", :repo_name=>"vim-ft-vroom"}
{:language=>"Vim script", :created=>"2013-12-06T23:28:52Z", :repo_name=>"vim-glaive"}
{:language=>"Vim script", :created=>"2015-10-01T00:14:33Z", :repo_name=>"vim-jsonnet"}
{:language=>"Vim script", :created=>"2013-12-05T21:59:43Z", :repo_name=>"vim-maktaba"}
{:language=>"Vim script", :created=>"2015-10-13T23:03:16Z", :repo_name=>"vim-searchindex"}
{:language=>"Vim script", :created=>"2016-02-19T21:47:58Z", :repo_name=>"vim-selector"}
{:language=>"Vim script", :created=>"2014-11-25T17:17:11Z", :repo_name=>"vim-syncopate"}
{:language=>"Python", :created=>"2014-03-17T18:12:29Z", :repo_name=>"vimdoc"}
{:language=>"Rust", :created=>"2020-08-04T08:22:47Z", :repo_name=>"vimscript-language-server"}
{:language=>"JavaScript", :created=>"2019-11-06T21:47:08Z", :repo_name=>"virtual-authenticators-tab"}
{:language=>"HTML", :created=>"2017-03-29T23:56:54Z", :repo_name=>"virtual-tutors"}
{:language=>"JavaScript", :created=>"2015-08-06T15:59:32Z", :repo_name=>"virtualdesktops-extension"}
{:language=>"C++", :created=>"2019-12-06T19:44:18Z", :repo_name=>"visqol"}
{:language=>"CMake", :created=>"2019-10-15T13:34:02Z", :repo_name=>"vkb"}
{:language=>"C++", :created=>"2017-06-14T18:31:13Z", :repo_name=>"vk_callback_swapchain"}
{:language=>"Go", :created=>"2017-05-24T18:39:02Z", :repo_name=>"vmregistry"}
{:language=>"JavaScript", :created=>"2014-10-02T17:47:31Z", :repo_name=>"vogon"}
{:language=>"JavaScript", :created=>"2018-03-05T13:17:52Z", :repo_name=>"voice-builder"}
{:language=>"JavaScript", :created=>"2017-09-11T21:16:45Z", :repo_name=>"voice-iot-maker-demo"}
{:language=>"Java", :created=>"2017-01-24T17:39:33Z", :repo_name=>"volley"}
{:language=>"C++", :created=>"2014-07-08T00:21:40Z", :repo_name=>"VoltAir"}
{:language=>"JavaScript", :created=>"2015-05-05T23:12:14Z", :repo_name=>"voter-info-tool"}
{:language=>"C", :created=>"2013-09-17T22:26:12Z", :repo_name=>"vpn-reverse-tether"}
{:language=>"Java", :created=>"2018-12-06T21:33:29Z", :repo_name=>"vr180"}
{:language=>"Python", :created=>"2017-09-29T15:15:29Z", :repo_name=>"VRD"}
{:language=>"Python", :created=>"2014-02-24T21:00:11Z", :repo_name=>"vroom"}
{:language=>"JavaScript", :created=>"2016-01-25T17:24:47Z", :repo_name=>"vsaq"}
{:language=>"TypeScript", :created=>"2018-10-16T17:19:35Z", :repo_name=>"vscode-bigquery"}
{:language=>"C++", :created=>"2016-04-04T19:51:46Z", :repo_name=>"vulkan-cpp-library"}
{:language=>"C++", :created=>"2019-12-31T06:51:38Z", :repo_name=>"vulkan-pre-rotation-demo"}
{:language=>"C++", :created=>"2017-06-14T18:32:23Z", :repo_name=>"vulkan_test_applications"}
{:language=>"Python", :created=>"2019-03-05T11:47:04Z", :repo_name=>"vulncode-db"}
{:language=>"C++", :created=>"2019-05-17T07:11:02Z", :repo_name=>"vxsig"}
{:language=>"C", :created=>"2019-09-19T14:08:38Z", :repo_name=>"walk"}
{:language=>"Java", :created=>"2016-02-26T19:41:21Z", :repo_name=>"walt"}
{:language=>"Python", :created=>"2017-09-15T07:56:22Z", :repo_name=>"wasserstein-dist"}
{:language=>"Java", :created=>"2015-05-19T15:56:04Z", :repo_name=>"watchpresenter"}
{:language=>"JavaScript", :created=>"2018-01-04T17:24:19Z", :repo_name=>"wayback-machine-button"}
{:language=>"Python", :created=>"2018-12-05T20:34:43Z", :repo_name=>"waze-ccp-gcp"}
{:language=>"Java", :created=>"2015-08-04T00:28:52Z", :repo_name=>"wear-displaylock"}
{:language=>"Java", :created=>"2015-08-04T00:11:30Z", :repo_name=>"wear-screeninfo"}
{:language=>"Java", :created=>"2015-08-04T00:30:37Z", :repo_name=>"wear-sensors"}
{:language=>"Go", :created=>"2015-12-31T10:09:17Z", :repo_name=>"weasel"}
{:language=>"JavaScript", :created=>"2017-12-05T18:32:48Z", :repo_name=>"web-activities"}
{:language=>"Go", :created=>"2018-09-24T22:06:10Z", :repo_name=>"web-api-gateway"}
{:language=>"Jupyter Notebook", :created=>"2017-12-21T02:42:25Z", :repo_name=>"web-audio-recognition"}
{:language=>"Go", :created=>"2016-09-30T23:04:28Z", :repo_name=>"web-bsd-hunt"}
{:language=>"JavaScript", :created=>"2019-01-02T03:54:12Z", :repo_name=>"web-hv"}
{:language=>"TypeScript", :created=>"2019-07-31T19:32:02Z", :repo_name=>"web-serial-polyfill"}
{:language=>"HTML", :created=>"2014-04-07T08:45:18Z", :repo_name=>"web-starter-kit"}
{:language=>nil, :created=>"2014-08-12T16:00:39Z", :repo_name=>"web-starter-kit-extras"}
{:language=>"JavaScript", :created=>"2020-01-21T20:30:33Z", :repo_name=>"web-stories-wp"}
{:language=>"Java", :created=>"2017-06-09T17:49:49Z", :repo_name=>"webauthndemo"}
{:language=>"Rust", :created=>"2020-01-29T03:11:19Z", :repo_name=>"webbundle"}
{:language=>"Dart", :created=>"2020-08-10T14:35:13Z", :repo_name=>"webcrypto.dart"}
{:language=>"Dart", :created=>"2013-07-22T23:48:29Z", :repo_name=>"webdriver.dart"}
{:language=>"HTML", :created=>"2014-04-28T18:45:45Z", :repo_name=>"WebFundamentals"}
{:language=>"Dart", :created=>"2015-05-06T16:53:15Z", :repo_name=>"webkit_inspection_protocol.dart"}
{:language=>"Go", :created=>"2019-08-26T05:26:03Z", :repo_name=>"webpackager"}
{:language=>"Go", :created=>"2019-10-01T17:21:04Z", :repo_name=>"webrisk"}
{:language=>"Java", :created=>"2015-01-27T23:42:45Z", :repo_name=>"webview-local-server"}
{:language=>"Dart", :created=>"2015-04-11T03:57:53Z", :repo_name=>"web_notifications.dart"}
{:language=>"Python", :created=>"2018-06-28T18:46:44Z", :repo_name=>"weighted-dict"}
{:language=>"Python", :created=>"2014-01-06T23:50:14Z", :repo_name=>"wheelbarrow"}
{:language=>"Java", :created=>"2018-07-25T18:59:12Z", :repo_name=>"where-am-i"}
{:language=>nil, :created=>"2020-06-16T16:33:35Z", :repo_name=>"where-is-my-watch"}
{:language=>nil, :created=>"2013-09-10T01:33:08Z", :repo_name=>"wiberg-minimization"}
{:language=>"JavaScript", :created=>"2015-04-01T19:50:40Z", :repo_name=>"wicked-good-xpath"}
{:language=>"Python", :created=>"2020-06-11T21:26:10Z", :repo_name=>"wikiloop-analysis"}
{:language=>nil, :created=>"2018-08-30T22:05:03Z", :repo_name=>"wikiloop-datasets"}
{:language=>"TypeScript", :created=>"2019-04-10T18:35:37Z", :repo_name=>"wikiloop-doublecheck"}
{:language=>"Vue", :created=>"2019-08-14T07:40:43Z", :repo_name=>"wikiloop-explorer"}
{:language=>"JavaScript", :created=>"2019-08-17T15:04:47Z", :repo_name=>"wikiloop-wikidata-game"}
{:language=>nil, :created=>"2018-02-02T13:18:19Z", :repo_name=>"WikipediaHomographData"}
{:language=>"Java", :created=>"2015-05-04T15:20:07Z", :repo_name=>"windowtester"}
{:language=>"Go", :created=>"2016-03-21T14:36:40Z", :repo_name=>"winops"}
{:language=>"Go", :created=>"2018-11-28T17:34:51Z", :repo_name=>"wire"}
{:language=>nil, :created=>"2020-04-10T22:16:18Z", :repo_name=>"wmt19-paraphrased-references"}
{:language=>"C++", :created=>"2014-10-09T14:34:43Z", :repo_name=>"woff2"}
{:language=>"C", :created=>"2017-11-13T00:44:45Z", :repo_name=>"wuffs"}
{:language=>"JavaScript", :created=>"2015-03-23T21:02:10Z", :repo_name=>"wwgc"}
{:language=>"JavaScript", :created=>"2018-07-17T04:57:29Z", :repo_name=>"wwwbasic"}
{:language=>"Java", :created=>"2016-11-08T20:56:25Z", :repo_name=>"wycheproof"}
{:language=>"Python", :created=>"2016-09-14T13:15:19Z", :repo_name=>"x509test"}
{:language=>"Python", :created=>"2017-09-08T02:37:43Z", :repo_name=>"xctestrunner"}
{:language=>"C", :created=>"2017-01-24T19:40:23Z", :repo_name=>"xdelta3-decoder-js"}
{:language=>"C++", :created=>"2017-02-24T00:23:16Z", :repo_name=>"xmpmeta"}
{:language=>"C", :created=>"2019-09-13T23:48:37Z", :repo_name=>"XNNPACK"}
{:language=>"C++", :created=>"2014-08-29T18:38:08Z", :repo_name=>"xpaf"}
{:language=>nil, :created=>"2015-11-05T02:01:09Z", :repo_name=>"xpra-upstart"}
{:language=>"C++", :created=>"2017-03-29T17:10:19Z", :repo_name=>"xrtl"}
{:language=>"C", :created=>"2014-06-20T14:55:28Z", :repo_name=>"xsecurelock"}
{:language=>"Rust", :created=>"2018-11-13T17:32:51Z", :repo_name=>"xsecurelock-saver-rs"}
{:language=>"C", :created=>"2019-10-22T20:23:59Z", :repo_name=>"xssxss"}
{:language=>"Go", :created=>"2020-06-29T23:30:27Z", :repo_name=>"xtoproto"}
{:language=>"Matlab", :created=>"2017-01-02T10:32:11Z", :repo_name=>"yang_vocoder"}
{:language=>"Python", :created=>"2015-03-18T18:22:31Z", :repo_name=>"yapf"}
{:language=>"C", :created=>"2017-10-19T14:20:35Z", :repo_name=>"yara-procdump-python"}
{:language=>"Verilog", :created=>"2018-01-08T17:08:36Z", :repo_name=>"yaricv32"}
{:language=>"Java", :created=>"2017-10-20T13:51:55Z", :repo_name=>"YetAnotherChatApp"}
{:language=>nil, :created=>"2014-03-26T15:31:07Z", :repo_name=>"YouCompleteSubl"}
{:language=>"Python", :created=>"2016-12-20T21:49:38Z", :repo_name=>"youtube-8m"}
{:language=>"Java", :created=>"2015-03-16T20:20:28Z", :repo_name=>"ytstatistics-demo"}
{:language=>"Java", :created=>"2014-09-25T16:47:01Z", :repo_name=>"zarathustra"}
{:language=>"TypeScript", :created=>"2018-05-11T17:27:25Z", :repo_name=>"zazu"}
{:language=>"Shell", :created=>"2015-11-05T02:04:10Z", :repo_name=>"zeroshell-linode"}
{:language=>"Java", :created=>"2019-05-23T17:10:53Z", :repo_name=>"zetasketch"}
{:language=>"C++", :created=>"2019-04-16T17:43:46Z", :repo_name=>"zetasql"}
{:language=>"Python", :created=>"2017-04-03T18:14:56Z", :repo_name=>"Zhi"}
{:language=>"C", :created=>"2013-10-02T20:45:17Z", :repo_name=>"zimu"}
{:language=>"Go", :created=>"2016-04-29T16:46:16Z", :repo_name=>"zoekt"}
{:language=>"C++", :created=>"2015-05-21T19:26:59Z", :repo_name=>"zooshi"}
{:language=>"C++", :created=>"2015-03-09T10:32:36Z", :repo_name=>"zopfli"}
{:language=>"Kotlin", :created=>"2019-03-08T00:37:14Z", :repo_name=>"zsldemo"}
```



