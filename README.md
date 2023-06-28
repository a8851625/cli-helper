## OpenAI 命令行工具
这是一个命令行工具，使用 OpenAI 的 API 根据给定的提示生成文本。该工具可以用于生成想法、完成句子或段落，甚至可以用于生成代码片段。

### 前置条件
为了使用此命令行工具，您需要在计算机上安装以下软件：

- curl
- OpenAI API 密钥

您需要将您的 OpenAI API 密钥存储在环境变量 OPENAI_API_KEY 中。您可以使用以下命令在终端中设置该变量：

```
export OPENAI_API_KEY=<your-api-key>
```

### 安装
- 下载 cli.sh 脚本：

```
curl -O https://raw.githubusercontent.com/a8851625/cli-helper/main/cli.sh

将脚本移动到 /usr/local/bin 目录中：

sudo mv cli.sh /usr/local/bin/cli
赋予脚本执行权限：

sudo chmod +x /usr/local/bin/cli
```

现在，您可以在终端中使用 cli 命令来运行 OpenAI 命令行工具。

### 使用方法

要使用该命令行工具，请运行 cli 命令并将提示作为参数。例如：

```
cli ls

可能的Linux命令：

1. ls - 列出当前目录下的文件和子目录
2. ls -l - 列出当前目录下的文件和子目录，并显示详细信息，如权限、所有者、大小等
3. ls -a - 列出当前目录下的所有文件和子目录，包括隐藏文件
4. ls -lh - 列出当前目录下的文件和子目录，并以易读格式显示文件大小
5. ls /path/to/directory/ - 列出指定路径下的文件和子目录

使用例子：

1. ls
输出：file1.txt file2.txt directory1

2. ls -l
输出：
-rw-r--r-- 1 user group 1024 Jan 01 00:00 file1.txt
-rw-r--r-- 1 user group 2048 Jan 01 00:00 file2.txt
drwxr-xr-x 2 user group 4096 Jan 01 00:00 directory1

3. ls -a
输出：file1.txt file2.txt .hidden_file directory1 ..

4. ls -lh
输出：
-rw-r--r-- 1 user group 1K Jan 01 00:00 file1.txt
-rw-r--r-- 1 user group 2K Jan 01 00:00 file2.txt
drwxr-xr-x 2 user group 4K Jan 01 00:00 directory1

5. ls /home/user/Documents/
输出：file3.docx subdirectory/

```
这将根据给定的提示生成一个响应并将结果输出到控制台。

### 配置

您可以在 cli 脚本中配置以下变量：

```
MODEL：要使用的语言模型的名称。默认值为 gpt-3.5-turbo-0301。
PROMPT：作为语言模型输入的提示。默认值为 你是一位linux命令专家,请输出可能的linux命令并输出使用的例子:'<your request>'。
TOKEN_COUNT：要生成的令牌数量。默认值为 500。
TEMPERATURE：生成文本的温度值。默认值为 0.0。
TOP_P：生成文本的 top_p 值。默认值为 1。
FREQUENCY：生成文本的频率惩罚值。默认值为 0.5。
PRESENCE：生成文本的存在惩罚值。默认值为 0.5。
```
您可以修改这些变量以调整命令行工具的行为。
