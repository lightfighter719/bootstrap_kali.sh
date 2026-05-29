## Launch Kali Linux on macOS
#### <a href="https://lightfighter719.github.io/bootstrap_kali.sh/">Launch Kali Linux</a><br>
```
container exec -it kali bash -c "printf 'nameserver 1.1.1.1\nnameserver 8.8.8.8\n' > /etc/resolv.conf && apt update && apt install -y curl git sudo wget python3 python3-pip && bash <(curl -fsSL https://raw.githubusercontent.com/lightfighter719/bootstrap_kali.sh/main/bootstrap_kali.sh)"

```
<img width="1194" height="747" alt="Screenshot 2026-04-04 at 16 53 47" src="https://github.com/user-attachments/assets/64f7bf34-8fc8-486f-8bf2-665c69e79992" />
