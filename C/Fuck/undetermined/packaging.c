#include <stdlib.h>
#include <stdio.h>

int main() {
    char source_file[100];
    char output_file[100];

    printf("请输入源代码文件名（包括后缀名.c）：");
    scanf("%s", source_file);

    printf("请输入输出文件名（包括后缀名.exe）：");
    scanf("%s", output_file);

    // 构建编译命令
    char command[200];
    // sprintf(command, "gcc -o %s %s", output_file, source_file);

    // release 版本
    sprintf(command, "gcc -o %s %s -O3 -s", output_file, source_file);

    // 执行编译命令
    int result = system(command);

    if (result == 0) {
        printf("打包成功！\n");
    } else {
        printf("打包失败。\n");
    }

    return 0;
}
