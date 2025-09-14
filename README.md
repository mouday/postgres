PostgreSQL中文阅读笔记
=====================================

目录结构
```bash
COPYRIGHT 版权信息
GUNMakefile 第一级目录的 Makefile
GUNMakefile.in Makefile 的雏形
HISTORY 修改历史
INSTALL 安装方法简要说明
Makefile Makefile模版
README 简单说明
aclocal.m4 config 用的文件的一部分
config/ config 用的文件的目录
configure configure 文件
configure.in configure 文件的雏形
contrib/ contribution 程序
doc/ 文档目录
src/ 源代码目录
    Makefile Makefile
    Makefile.global make 的设定值（从configure生成的）
    Makefile.global.in Configure使用的Makefile.global的雏形
    Makefile.port 平台相关的make的设定值，实际是一个到makefile/Makefile的连接. （从configure生成的）
    Makefile.shlib 共享库用的Makefile
    backend/ 后端的源码目录
        Makefile makefile
        access/ 各种存储访问方法(在各个子目录下) 
            common(共同函数)、
            gin (Generalized Inverted Index通用逆向索引)
            gist (Generalized Search Tree通用索引)、 
            hash (哈希索引)、
            heap (heap的访问方法)、
            index (通用索引函数)、 
            nbtree (Btree函数)、
            transam (事务处理)
        bootstrap/ 数据库的初始化处理(initdb的时候)
        catalog/ 系统目录
        commands/ SELECT/INSERT/UPDATE/DELETE以为的SQL文的处理
        executor/ 执行器(访问的执行)
        foreign/ FDW(Foreign Data Wrapper)处理
        lib/ 共同函数
        libpq/ 前端/后端通信处理
        main/ postgres的主函数
        nodes/ 构文树节点相关的处理函数
        optimizer/ 优化器
        parser/ SQL构文解析器
        port/ 平台相关的代码
        postmaster/ postmaster的主函数 (常驻postgres)
        replication/ streaming replication
        regex/ 正则处理
        rewrite/ 规则及视图相关的重写处理
        snowball/ 全文检索相关（语干处理）
        storage/ 共享内存、磁盘上的存储、缓存等全部一次/二次记录管理(以下的目录)buffer/(缓存管理)、 file/(文件)、
        freespace/(Fee Space Map管理) ipc/(进程间通信)、large_object /(大对象的访问函数)、
        lmgr/(锁管理)、page/(页面访问相关函数)、 smgr/(存储管理器)
        tcop/ postgres (数据库引擎的进程)的主要部分
        tsearch/ 全文检索
        utils/ 各种模块(以下目录) adt/(嵌入的数据类型)、cache/(缓存管理)、 error/(错误处理)、fmgr/(函数管理)、
        hash/(hash函数)、 init/(数据库初始化、postgres的初期处理)、 mb/(多字节文字处理)、
        misc/(其他)、mmgr/(内存的管理函数)、 resowner/(查询处理中的数据(buffer pin及表锁)的管理)、
        sort/(排序处理)、time/(事务的 MVCC 管理)
    bcc32.mak Win32 ポート用の Makefile (Borland C++ 用)
    bin/ psql 等 UNIX命令的代码
    include/ 头文件
    interfaces/ 前端相关的库的代码
    makefiles/ 平台相关的make 的设置值
    nls-global.mk 信息目录用的Makefile文件的规则
    pl/ 存储过程语言的代码
    port/ 平台移植相关的代码
    template/ 平台相关的设置值
    test/ 各种测试脚本
    timezone/ 时区相关代码
    tools/ 各自开发工具和文档
    tutorial/ 教程
    win32.mak Win32 ポート用の Makefile (Visual C++ 用)
```

pg_ctl -D /Users/wang/local/postgres-data -l logfile start

psql db_test


https://www.cnblogs.com/feishujun/p/PostgreSQLSourceAnalysis_query001.html