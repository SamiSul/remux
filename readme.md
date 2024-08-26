### Installation & Usage

- Clone the script and add it to your `$PATH`
- Run `remux s` to save the current state of Tmux
  > The state is saved to `~/.local/share/remux.txt`
  > This is an example snapshot, never edit this manually:
  ```
  q>0>fish>4926,190x48,0,0[190x24,0,0,1,190x23,0,25,2]>0>fish>/home/sami/Documents/projs/remux
  q>0>fish>4926,190x48,0,0[190x24,0,0,1,190x23,0,25,2]>1>bash>/home/sami/Documents/projs/remux
  q>1>c>59cd,190x48,0,0{95x48,0,0[95x24,0,0,3,95x23,0,25{47x23,0,25,9,47x23,48,25[47x11,48,25,8,47x11,48,37,7]}],94x48,96,0[94x37,96,0,6,94x10,96,38{47x10,96,38,5,46x10,144,38,4}]}>0>fish>/home/sami/Documents/projs/remux
  q>1>c>59cd,190x48,0,0{95x48,0,0[95x24,0,0,3,95x23,0,25{47x23,0,25,9,47x23,48,25[47x11,48,25,8,47x11,48,37,7]}],94x48,96,0[94x37,96,0,6,94x10,96,38{47x10,96,38,5,46x10,144,38,4}]}>1>fish>/home/sami/medina
  q>1>c>59cd,190x48,0,0{95x48,0,0[95x24,0,0,3,95x23,0,25{47x23,0,25,9,47x23,48,25[47x11,48,25,8,47x11,48,37,7]}],94x48,96,0[94x37,96,0,6,94x10,96,38{47x10,96,38,5,46x10,144,38,4}]}>2>fish>/home/sami/Documents/projs/remux
  q>1>c>59cd,190x48,0,0{95x48,0,0[95x24,0,0,3,95x23,0,25{47x23,0,25,9,47x23,48,25[47x11,48,25,8,47x11,48,37,7]}],94x48,96,0[94x37,96,0,6,94x10,96,38{47x10,96,38,5,46x10,144,38,4}]}>3>fish>/home/sami/Documents/projs/remux
  q>1>c>59cd,190x48,0,0{95x48,0,0[95x24,0,0,3,95x23,0,25{47x23,0,25,9,47x23,48,25[47x11,48,25,8,47x11,48,37,7]}],94x48,96,0[94x37,96,0,6,94x10,96,38{47x10,96,38,5,46x10,144,38,4}]}>4>fish>/home
  q>1>c>59cd,190x48,0,0{95x48,0,0[95x24,0,0,3,95x23,0,25{47x23,0,25,9,47x23,48,25[47x11,48,25,8,47x11,48,37,7]}],94x48,96,0[94x37,96,0,6,94x10,96,38{47x10,96,38,5,46x10,144,38,4}]}>5>fish>/home/sami/Documents/projs/remux
  q>1>c>59cd,190x48,0,0{95x48,0,0[95x24,0,0,3,95x23,0,25{47x23,0,25,9,47x23,48,25[47x11,48,25,8,47x11,48,37,7]}],94x48,96,0[94x37,96,0,6,94x10,96,38{47x10,96,38,5,46x10,144,38,4}]}>6>fish>/home/sami/Documents/projs/remux
  q>2>b>0fee,190x48,0,0[190x12,0,0{95x12,0,0,10,47x12,96,0,16,46x12,144,0,17},190x11,0,13,15,190x11,0,25{49x11,0,25,11,140x11,50,25,14},190x11,0,37{95x11,0,37,12,94x11,96,37,13}]>0>fish>/home/sami
  q>2>b>0fee,190x48,0,0[190x12,0,0{95x12,0,0,10,47x12,96,0,16,46x12,144,0,17},190x11,0,13,15,190x11,0,25{49x11,0,25,11,140x11,50,25,14},190x11,0,37{95x11,0,37,12,94x11,96,37,13}]>1>fish>/home/sami
  q>2>b>0fee,190x48,0,0[190x12,0,0{95x12,0,0,10,47x12,96,0,16,46x12,144,0,17},190x11,0,13,15,190x11,0,25{49x11,0,25,11,140x11,50,25,14},190x11,0,37{95x11,0,37,12,94x11,96,37,13}]>2>fish>/home/sami
  q>2>b>0fee,190x48,0,0[190x12,0,0{95x12,0,0,10,47x12,96,0,16,46x12,144,0,17},190x11,0,13,15,190x11,0,25{49x11,0,25,11,140x11,50,25,14},190x11,0,37{95x11,0,37,12,94x11,96,37,13}]>3>fish>/home/sami
  q>2>b>0fee,190x48,0,0[190x12,0,0{95x12,0,0,10,47x12,96,0,16,46x12,144,0,17},190x11,0,13,15,190x11,0,25{49x11,0,25,11,140x11,50,25,14},190x11,0,37{95x11,0,37,12,94x11,96,37,13}]>4>fish>/home/sami
  q>2>b>0fee,190x48,0,0[190x12,0,0{95x12,0,0,10,47x12,96,0,16,46x12,144,0,17},190x11,0,13,15,190x11,0,25{49x11,0,25,11,140x11,50,25,14},190x11,0,37{95x11,0,37,12,94x11,96,37,13}]>5>fish>/home/sami
  q>2>b>0fee,190x48,0,0[190x12,0,0{95x12,0,0,10,47x12,96,0,16,46x12,144,0,17},190x11,0,13,15,190x11,0,25{49x11,0,25,11,140x11,50,25,14},190x11,0,37{95x11,0,37,12,94x11,96,37,13}]>6>fish>/home/sami
  q>2>b>0fee,190x48,0,0[190x12,0,0{95x12,0,0,10,47x12,96,0,16,46x12,144,0,17},190x11,0,13,15,190x11,0,25{49x11,0,25,11,140x11,50,25,14},190x11,0,37{95x11,0,37,12,94x11,96,37,13}]>7>fish>/home/sami
  ```
- Run `remux r` to restore the saved state of Tmux
