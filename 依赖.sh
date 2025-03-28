#!/usr/bin/env bash
#依赖安装，运行一次就好
#2 2 29 2 * jd_deps.sh
#new Env('依赖安装')
#

npm_ver=$(pnpm -v | awk -F. '{print $1}')
if [[ $npm_ver -ge 7 ]]; then
    export PNPM_HOME="/root/.local/share/pnpm"
    export PATH="$PNPM_HOME:$PATH"
fi

echo -e "安装脚本所需依赖，不一定一次全部安装成功，请自己检查\n"
echo -e "开始安装............\n"

#apk add g++ make pixman-dev pango-dev cairo-dev pkgconf --no-cache
apk add g++ make --no-cache libxml2-dev libxslt-dev
pnpm config set registry https://registry.npmmirror.com
pnpm install -g redis@4.6.10
pnpm install -g ds
pnpm install -g qs
pnpm install -g http-cookie-agent
pnpm install -g crc
pnpm install -g png-js
pnpm install -g date-fns
pnpm install -g axios@1.6.7
pnpm install -g crypto-js
pnpm install -g tunnel
pnpm install -g js-base64
pnpm install -g ts-md5
pnpm install -g tough-cookie
pnpm install -g tslib
pnpm install -g global-agent
pnpm install -g @types/node
pnpm install -g request
pnpm install -g jsdom
pnpm install -g moment
pnpm install -g cheerio
pnpm install -g dotenv
pnpm install -g sharp
pnpm install -g got@11.8.6
pnpm install -g tough-cookie
pnpm install -g https-proxy-agent@7.0.4
pnpm install -g console-table-printer@2.12.0
pip  install -U --force-reinstall pip
pip3 install -i https://mirrors.aliyun.com/pypi/simple/ jieba
pip3 install -i https://mirrors.aliyun.com/pypi/simple/ requests
pip3 install -i https://mirrors.aliyun.com/pypi/simple/ lxml
pip3 install -i https://mirrors.aliyun.com/pypi/simple/ gmssl
rm -rf /usr/local/pnpm-global/5/node_modules/.pnpm/canvas*
rm -rf /root/.local/share/pnpm/global/5/.pnpm/canvas*
echo -e "\n所需依赖安装完成，请检查有没有报错，可尝试再次运行"
