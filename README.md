# video_360

A new Flutter project.

## Getting Started

Append your links with video360:// and removing any similar substring such as https:// 
example: video360://github.com/stephangopaul/video_samples/blob/master/gb.mp4?raw=true

How to test: adb shell "am start -W -a android.intent.action.VIEW -c android.intent.category.BROWSABLE -d video360://github.com/stephangopaul/video_samples/blob/master/gb.mp4?raw=true"

