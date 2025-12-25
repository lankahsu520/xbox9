# 1. Overview

> xbox9 provides build environments such as Yocto and OpenWrt. Although it cannot be used to build the kernel or generate full system images, it can compile applications and required libraries using the corresponding toolchains, and does so more efficiently than Yocto.

> xbox9 ( [Lanka Hsu](lankahsu@gmail.com) 個人實驗開發環境）是整合性的編譯[^1] SDK。
>
> 提供範本便於軟體工程師編譯自行開發的程式。讓其軟體能順利的在特定硬體和作業系統上執行（簡稱程式跨平臺執行[^2]）。
>
> 其中整合了 make、cmake、meson 構建系統和常用 Open Source 。

> xbox9 與市面上的 System integration （如 Yocto、OpenWrt、Buildroot 等）類似，但不能編譯出作業系統和 Toolchain。也因此編譯時間較短，利於軟體工程師開發與除錯。
>
> 當然獲得不同開發平台的 Toolchain，也將決定“可”執行的平台。

> 大廠因為 GPL 的關係，會提供相對應的 sources 和堪用的 Toolchain；就舉很簡單的情境，當這些工具裏都沒有 libssl.so 時，就得要使用者自行編譯，xbox9 將是最佳選擇。

# 2. Depend on

> 因為個人的空間有限，只展示幾個常使用的。
>
> 如果版本有差異，請將網路抓取的 *.tar.gz 放至 `PJ_DOWNLOAD=${PJ_ROOT_DIR}/downloads`，再更改如 `PJ_OPENSSL_VERSION=openssl-OpenSSL_1_1_1k`、`PJ_UTILX9_VERSION=utilx9-3.2.0`。

> 有的人會提出問題：「為什麼不用 git 的方式，動態抓取」。
>
> 大概可歸類幾個原因
>
> - 離線編譯；有效解決有時網路不通，git server 過慢。
> - 定版
> - 沒有多餘的檔案，如 .git、.svn。

## 2.1. Open-source (common)

> 如果是採用 Toolchain （有時不見得有 sysroot）進行編譯時，儘量讓編譯的版本與實際執行的版本一致。

> 當 Toolchain - sysroot （FAE 提供的） 裏的版本過舊時，可能就要把該版本刪除或是替換掉，不要有不同版本存在。

#### - [cJSON](https://https://github.com/DaveGamble/cJSON) (PJ_HAS_CJSON)

#### - [curl](https://curl.haxx.se) (PJ_HAS_CURL)

#### - [dbus](https://www.freedesktop.org/wiki/Software/dbus/) (PJ_HAS_DBUS)

#### - [jansson](https://github.com/akheron/jansson) (PJ_HAS_JANSSON)

#### - [libpsl](https://github.com/rockdaboot/libpsl) (PJ_HAS_LIBPSL)

#### - [libusb](https://github.com/libusb/libusb) (PJ_HAS_LIBUSB)

#### - [libuv](https://github.com/libuv/libuv) (PJ_HAS_LIBUV / UTIL_EX_UV) 

#### - [libwebsockets](https://libwebsockets.org) (PJ_HAS_LIBWEBSOCKETS)

#### - [mosquitto](https://mosquitto.org) (PJ_HAS_MOSQUITTO)

#### - [openssl](https://www.openssl.org) (PJ_HAS_OPENSSL)
#### - [utilx9](https://github.com/lankahsu520/utilx9) (PJ_HAS_UTILX9)

> 本人開發

## 2.2. vendor

### 2.2.1. [aws](https://github.com/aws)

> Amazon Web Services

#### - [aws-sdk-cpp](https://github.com/aws/aws-sdk-cpp) (PJ_HAS_AWS_SDK_CPP)

#### - [awsX9](https://github.com/lankahsu520/awsX9) (PJ_HAS_AWSX9)

> 本人開發

# 3. Current Status

## 3.1. Eenvironment

> 當前的測試環境

| NAME   | VERSION                             |
| ------ | ----------------------------------- |
| python | 3.10.18                             |
| pip    | 25.3                                |
| cmake  | 4.2.0                               |
| meson  | 1.10.0                              |
| ninja  | 1.13.0.git.kitware.jobserver-pipe-1 |

## 3.2. Tree of xbox9

> 個人習慣擺放的位置如下

```bash
./
├── bin : 常用的 shellscript
├── confs : 編譯的設定檔案
├── helloworld : 範例程式 helloworld，可當範本；gdb 使用說明
├── include : 共用 Header Files
├── libs : 開源軟體
├── Makefile : 主 Makefile
├── mk : 關聯性的 Makefiles
├── README.md : 說明檔
└── user
    └── commons : 共用應用程式
    ├── customer : 針對不同客戶的應用程式
    └── vendor : 存放開放商提供之應用程式
        ├── aws : AWS 相關程式
        ├── tiqiaa : 操控紅外線程式
        └── tuya : tuya 相關程式
```

## 3.3. confs/xxx.conf

> 目前的專案
> ★: default

|      | File               | Target             | Host               | Toolchain                       | Desc                      |
| ---- | ------------------ | ------------------ | ------------------ | ------------------------------- | ------------------------- |
| ★    | UTILX9_X86.conf    | ubuntu / raspberry | ubuntu / raspberry | gcc                             | run binaries on x86       |
|      | UTILX9_IMX8MM.conf | imx8mmevk          | ubuntu             | fsl-imx-xwayland_6.12-walnascar | run binaries on imx8mmevk |

# 4. Build

## 4.1. download

```bash
$ pwd
/work
$ git clone https://github.com/lankahsu520/xbox9.git
$ cd xbox9
```

## 4.2. configure

```bash
$ . confs/UTILX9_X86.conf
```

## 4.3. make, make install

> 將會把編譯完成的檔案放置 prefix installation path。

```bash
$ make
#or
$ make install
# 編譯後的檔案都會放入 ${SDK_ROOT_DIR}
$ echo ${SDK_ROOT_DIR}
/work/xbox9/install/UTILX9_X86

$ tree -L 1 ${SDK_ROOT_DIR}
/work/xbox9/install/UTILX9_X86
├── bin
├── etc
├── include
├── IoT
├── lib
├── libexec
├── opt
├── sbin
├── share
├── ssl
├── usr
└── var

12 directories, 0 files
```

## 4.4. make romfs

> 因為`Embedded system`的資源有限，提取所需的檔案，重建一個簡易的 rootfs。

```bash
$ make romfs
# 編譯後的檔都會放入 ${HOMEX_ROOT_DIR}
$ echo ${HOMEX_ROOT_DIR}
/work/xbox9/install/UTILX9_X86_rootfs

$ tree -L 1 ${HOMEX_ROOT_DIR}
/work/xbox9/install/UTILX9_X86_rootfs
├── bin
├── etc
├── include
├── IoT
├── lib
├── opt
├── sbin
└── usr

8 directories, 0 files
```

## 4.5. make target_install

> 這個主要是用於 Native-Compilation 時，將之前 `make romfs` 的 rootfs 放至指定的目錄，而該目錄又不影響系統。

```bash
# for run on ubuntu
$ make target_install

# 編譯後的檔都會放入 ${PJ_TARGET_DIR}
$ echo ${PJ_TARGET_DIR}
/work/rootfs

$ tree -L 1 ${PJ_TARGET_DIR}
/work/rootfs
├── bin
├── etc
├── include
├── IoT
├── lib
├── opt
├── sbin
└── usr

8 directories, 0 files
```

# 5. Example or Usage

> 在編譯自行開發之程式前，需要特別注意其相依性；建議先至少完成 `4.3. make, make install`後，再處理自行開發的程式。
>

## 5.1. usbHunter

> key : PJ_HAS_USBHUNTER

```bash
$ cd user/common/usbHunter
$ make distclean
# update 
$ make

$ file usbHunter
usbHunter: ELF 64-bit LSB shared object, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=7d531031581d486ff4bfc22f7f6439f09c663bb5, for GNU/Linux 3.2.0, with debug_info, not stripped

$ ./usbHunter -d 2 -s
[132849/132851] usbX_thread_handler:677 - usbX listen ... (vendor_id: 0xFFFFFFFF, product_id: 0xFFFFFFFF)
[132849/132851] usbX_dev_path:408 - (bus_number: 2)
[132849/132851] usbX_dev_path:408 - (bus_number: 1)
[132849/132851] usb2tty:109 - ARRIVED (80EE:0021;1-1;;)
[132849/132851] usbX_dev_path:408 - (bus_number: 1)
[132849/132851] usbX_dev_path:408 - (bus_number: 2)
[132849/132851] usb2tty:109 - ARRIVED (1F75:0903;2-1;;)
[132849/132851] usbX_dev_path:408 - (bus_number: 2)
[132849/132851] usb2tty:120 - LEFT (1F75:0903;2-1;;)
^C[132849/132849] app_signal_handler:259 - (signum: 2)
[132849/132851] usbX_thread_handler:719 - Bye-Bye !!!
```

## 5.2. Yocto-NXP-8MMINILPD4-EVKB

> 透過 [cookerX](https://github.com/lankahsu520/cookerX) (Yocto) 產生新的 Toolchain，然後設定相關的 Cross-Compilation 環境。

### 5.2.1. Install Toolchain

```bash
$ ./fsl-imx-xwayland-glibc-x86_64-core-image-base-armv8a-imx8mmevk-matter-toolchain-6.12-walnascar.sh
NXP i.MX Release Distro SDK installer version 6.12-walnascar
============================================================
Enter target directory for SDK (default: /opt/fsl-imx-xwayland/6.12-walnascar):
You are about to install the SDK to "/opt/fsl-imx-xwayland/6.12-walnascar". Proceed [Y/n]? Y
Extracting SDK................................................................................................................................................................................................................................................................................................................................................................................................done
Setting it up...done
SDK has been successfully set up and is ready to be used.
Each time you wish to use the SDK in a new shell session, you need to source the environment setup script e.g.
 $ . /opt/fsl-imx-xwayland/6.12-walnascar/environment-setup-armv8a-poky-linux
```

### 5.2.2. Environment setup

> 開啟新的 shell session 查看相關環境變數

```bash
$ . /opt/fsl-imx-xwayland/6.12-walnascar/environment-setup-armv8a-poky-linux

# PJ_TOOLCHAIN_DIR and PJ_PKG_CONFIG_ORG
$ env | grep "PATH="
PKG_CONFIG_PATH=/opt/fsl-imx-xwayland/6.12-walnascar/sysroots/armv8a-poky-linux/usr/lib/pkgconfig:/opt/fsl-imx-xwayland/6.12-walnascar/sysroots/armv8a-poky-linux/usr/share/pkgconfig
AWS_IOT_CORE_CERT_PATH=/work/IoT/awsKey
PATH=/opt/fsl-imx-xwayland/6.12-walnascar/sysroots/x86_64-pokysdk-linux/usr/bin:/opt/fsl-imx-xwayland/6.12-walnascar/sysroots/x86_64-pokysdk-linux/usr/sbin:/opt/fsl-imx-xwayland/6.12-walnascar/sysroots/x86_64-pokysdk-linux/bin:/opt/fsl-imx-xwayland/6.12-walnascar/sysroots/x86_64-pokysdk-linux/sbin:/opt/fsl-imx-xwayland/6.12-walnascar/sysroots/x86_64-pokysdk-linux/usr/bin/../x86_64-pokysdk-linux/bin:/opt/fsl-imx-xwayland/6.12-walnascar/sysroots/x86_64-pokysdk-linux/usr/bin/aarch64-poky-linux:/opt/fsl-imx-xwayland/6.12-walnascar/sysroots/x86_64-pokysdk-linux/usr/bin/aarch64-poky-linux-musl:/home/lanka/.local/bin:/home/lanka/bin:/home/lanka/.nvm/versions/node/v17.1.0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

# PJ_ARCH and PJ_TARGET
$ env | grep "ARCH="
ARCH=arm64
OECORE_TARGET_ARCH=aarch64

# PJ_HOST and PJ_CROSS 
$ env | grep "CROSS_COMPILE="
CROSS_COMPILE=aarch64-poky-linux-

# STAGING_DIR and PJ_SYSROOT
$ env | grep "SYSROOT="
SDKTARGETSYSROOT=/opt/fsl-imx-xwayland/6.12-walnascar/sysroots/armv8a-poky-linux
OECORE_NATIVE_SYSROOT=/opt/fsl-imx-xwayland/6.12-walnascar/sysroots/x86_64-pokysdk-linux
OECORE_TARGET_SYSROOT=/opt/fsl-imx-xwayland/6.12-walnascar/sysroots/armv8a-poky-linux

# CC_EXT
$ env | grep "CC="
CC=aarch64-poky-linux-gcc  -march=armv8-a+crc+crypto -mbranch-protection=standard -fstack-protector-strong  -O2 -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security --sysroot=/opt/fsl-imx-xwayland/6.12-walnascar/sysroots/armv8a-poky-linux

# CPP_EXT
$ env | grep "CPP="
CPP=aarch64-poky-linux-gcc -E  -march=armv8-a+crc+crypto -mbranch-protection=standard -fstack-protector-strong  -O2 -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security --sysroot=/opt/fsl-imx-xwayland/6.12-walnascar/sysroots/armv8a-poky-linux

# CXX_EXT
$ env | grep "CXX="
CXX=aarch64-poky-linux-g++  -march=armv8-a+crc+crypto -mbranch-protection=standard -fstack-protector-strong  -O2 -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security --sysroot=/opt/fsl-imx-xwayland/6.12-walnascar/sysroots/armv8a-poky-linux

# LD_EXT
$ env | grep "LD="
LD=aarch64-poky-linux-ld  --sysroot=/opt/fsl-imx-xwayland/6.12-walnascar/sysroots/armv8a-poky-linux

# CFLAGS_EXT
$ env | grep "CFLAGS="
KCFLAGS=--sysroot=/opt/fsl-imx-xwayland/6.12-walnascar/sysroots/armv8a-poky-linux
CFLAGS= -O2 -g  -pipe

# CPPFLAGS_EXT
$ env | grep "CPPFLAGS="
CPPFLAGS=

# CXXFLAGS_EXT
$ env | grep "CXXFLAGS="
CXXFLAGS= -O2 -g  -pipe

# LDFLAGS_EXT
$ env | grep "LDFLAGS="
LDFLAGS=-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed  -Wl,-z,relro,-z,now
```

### 5.2.3. Create a new conf

```bash
$ cp confs/UTILX9_X86.conf confs/UTILX9_IMX8MM.conf
# 依前一章節之變數進行修改
$ vi confs/UTILX9_IMX8MM.conf
```

### 5.2.4. Build imx8mm

> 相關步驟如 `4. Build`

```bash
$ . confs/UTILX9_IMX8MM.conf
$ make
$ make romfs
$ tree -L 3 ${SDK_ROOT_DIR}
$ tree -L 3 ${HOMEX_ROOT_DIR}
$ file ${HOMEX_ROOT_DIR}/bin/util_123
/work/xbox9/install/UTILX9_IMX8MM_rootfs/bin/util_123: ELF 64-bit LSB shared object, ARM aarch64, version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux-aarch64.so.1, BuildID[sha1]=d275752f2629c66d76db043874f3ecda85b09e1d, for GNU/Linux 5.15.0, stripped

$ file ${HOMEX_ROOT_DIR}/bin/usbHunter
/work/xbox9/install/UTILX9_IMX8MM_rootfs/bin/usbHunter: ELF 64-bit LSB shared object, ARM aarch64, version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux-aarch64.so.1, BuildID[sha1]=3a01e46189d0e3097cb6d3f872746c9952ca88c4, for GNU/Linux 5.15.0, stripped
```

# 6. Documentation

> Run an example and read it.

# Appendix

# I. Study

## I.1. [make](https://www.gnu.org/software/make/manual/html_node/index.html#SEC_Contents)

> [[wiki]make](https://zh.wikipedia.org/zh-tw/Make)

## I.2. [CMake](https://cmake.org)

> [[wiki]Cmake](https://zh.wikipedia.org/wiki/CMake)

## I.3. [Meson](https://mesonbuild.com)

> [[wiki]Meson](https://zh.wikipedia.org/wiki/Meson)

## I.4. Naming rules

### I.4.1. Reserved

>DBUS_PATH_XXX
>
>PKG_CONFIG_PATH

>CMAKE_MODULE_PATH
>
>CMAKE_PREFIX_PATH
>
>CMAKE_FIND_ROOT_PATH
>
>CMAKE_INSTALL_RPATH_USE_LINK_PATH

>GST_PLUGIN_PATH
>
>LD_LIBRARY_PATH

>AWS_KVS_CACERT_PATH
>
>AWS_KVS_ICE_CANDIDATE_CALCULATE_PATH

### I.4.2. User Defined

| NAME         | DESC               |
| ------------ | ------------------ |
| XXX_DIR      | 完整目錄           |
| XXX_FILENAME | 檔案名稱           |
| XXX_FILE     | 完整目錄/檔案名稱  |
| XXX_FOLDER   | 目錄名稱           |
| XXX123.sh    | 自定義 ShellScript |

# II. Debug

# III. Glossary 

# IV. Tool Usage

# Author

> Created and designed by [Lanka Hsu](lankahsu@gmail.com).

# License

> [xbox9](https://github.com/lankahsu520/xbox9) is available under the BSD-3-Clause license. See the LICENSE file for more info.

# Footnote

[^1]: 將某種程式語言寫成的[原始碼](https://zh.wikipedia.org/wiki/原始碼)（原始語言）轉換成另一種程式語言（目標語言）

> [ChatGPT] 整合性的編譯
>
> 編譯程式碼是將高階程式語言（如C、C++、Java等）的原始碼轉換為低階機器語言的過程。編譯程式碼具有多個重要的功能和用途，以下是一些主要的功用：
>
> 1. **產生可執行檔：** 編譯器將原始碼轉換為機器語言，生成可執行的二進制檔案，稱為執行檔。這個執行檔可以在電腦上運行並執行程式的功能。
>
> 2. **語法檢查：** 編譯器會檢查程式碼是否符合語法規則。如果程式碼中有語法錯誤，編譯器會產生錯誤訊息，指出錯誤的位置和類型。
>
> 3. **優化程式碼：** 編譯器可以對程式碼進行各種優化，包括減少執行時間、減少記憶體使用等，以提升程式的效能和效率。
>
> 4. **生成目標碼：** 編譯器將原始碼轉換成目標碼，這是一種中間表示形式，介於高階語言和機器語言之間。這使得程式碼能夠跨平台運行，因為相同的目標碼可以在不同的機器上執行。
>
> 5. **連結多個檔案：** 當程式碼分為多個原始碼檔案時，編譯器可以將它們連結在一起，生成單一的執行檔案。這包括將不同原始碼檔案中的函數和變數結合在一起。
>
> 6. **處理庫文件：** 編譯器可以使用預編譯的庫文件，這些庫文件包含了常用函數和工具，可以用來簡化程式碼開發，避免重複編寫相同的功能。
>
> 7. **錯誤檢測：** 編譯器可以檢測一些潛在的錯誤，如未初始化的變數、類型不匹配等，並生成警告或錯誤訊息。
>
> 8. **保護原始碼：** 編譯後的機器語言更難以讀懂，可以保護原始碼的商業機密和知識產權。
>
> 總之，編譯程式碼是將高階語言轉換為機器語言的過程，具有語法檢查、優化、生成執行檔等多種功能，是軟體開發過程中不可或缺的步驟。

[^2]: Cross-platform execution 跨平台運行是指一個軟體應用程式可以在多個不同的作業系統或硬體平台上運行，而不需要進行太多修改。這種做法具有一些重要的優點和好處

> [ChatGPT] 程式跨平臺執行
>
> 1. **更廣泛的使用者群：** 跨平台應用程式可以在多個作業系統上運行，從而吸引更廣泛的使用者群。無論是 Windows、macOS、Linux 或其他作業系統的用戶，都可以使用你的應用程式，從而擴大了潛在的客戶群。
> 2. **節省開發成本：** 跨平台開發可以減少重複編寫程式碼的工作，從而節省開發成本。如果只需維護一套程式碼庫，而不是為每個平台分別開發，那麼開發和維護的工作量將會減少。
> 3. **快速上市：** 跨平台開發可以加快產品上市的速度。由於只需要開發一個程式碼庫，你可以更快地推出新功能、修復錯誤和更新版本，而不需要在每個平台上進行獨立的開發和測試。
> 4. **提供統一的用戶體驗：** 使用跨平台的應用程式，無論用戶在哪個平台上運行，都可以享受到一致的用戶體驗。這有助於建立品牌忠誠度，並使用戶更容易適應不同的平台。
> 5. **適應不同市場：** 跨平台開發使你能夠更容易地進入不同的市場。你可以在多個平台上提供相同的功能，從而吸引不同地區和用戶群。
> 6. **適應不同設備：** 跨平台應用程式可以在不同類型的設備上運行，無論是桌面電腦、手機、平板電腦還是其他設備。這使得用戶可以在不同的設備上無縫切換。
> 7. **跨平台框架：** 一些跨平台框架和工具可以幫助開發者更容易地實現跨平台功能。例如，React Native、Flutter 和 Electron 等框架都提供了跨平台開發的能力。
>
> 儘管跨平台開發具有許多優勢，但也需要注意，某些特定平台的優化和功能可能無法完全在每個平台上實現。在進行跨平台開發時，需要仔細考慮並平衡各種因素，以確保提供穩定和一致的用戶體驗。

