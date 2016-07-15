# redis 数据结构


Redis 是一种面向“键/值”对类型数据的分布式 NoSQL 数据库系统，特点是高性能，持久存储，适应高并发的应用场景。

 工作中也经常使用 redis 做一些数据的简单存储，最近接触了个项目，发现 redis 能提供的功能原不止这些，抽空学习下 redis 能够存储的数据结构。
 
 redis 能够存储下列类型的数据：
 
 - String
 - List
 - Sets
 - Hashes
 - Sorted sets
 - Bitmaps
 - HyperLogLogs

String 

首先说下String类型，Redis 字符串是二进制安全的，这意味着一个 Redis 字符串能包含任意类型的数据，例如： 一张 JPEG 格式的图片或者一个序列化的 Java 对象等。

操作：

- set key value
- get key
- del key

列表 （Lists）

Redis 列表是简单的字符串列表，按照插入顺序排序。提供两种插入操作命令 LPUSH 和 RPUSH，分别表示插入一个新元素到列表头部（LPUSH）和 尾部（RPUSH）。一个列表最多包含pow(2,32)-1 个元素（4294967295）。

操作：

lpush mylist 1 2 3 4 5 //向列表头部插入元素

rpush mylist 9 8 7 6 // 向列表尾部插入元素

lrange mylist 0 4	// 获取列表的元素 下表范围为0,4的元素

ltrim mylist 0 2   // 截取列表的元素保留（下表范围0,2），其余丢弃

del mylist //删除列表

lpop mylist //从列表头部获取一个元素，并从列表中移除

rpop mylist //从列表尾部获取一个元素，并从列表中移除

blpop mylist timeout //阻塞式操作，与lpop相似，区别在于是否阻塞 

brpop mylist timeout //阻塞式操作，与rpop相似，区别在于是否阻塞 

集合（Sets）

Redis集合是一个无序的不重复的字符串合集。

哈希（Hashes）

Redis Hashes是字符串字段和字符串值之间的映射，所以它们是完美的表示对象的数据类型。