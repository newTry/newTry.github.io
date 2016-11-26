---
title: java-nio
date: 2016-11-26 21:17:15
tags: [nio]
categories: 
- jdk
---

java nio

# nio 三大概念

java nio 的三大概念，通道(Channel)、缓存区(Buffer)、选择器(Selector)

## Channel

Java NIO的通道类似流，但又有些不同：
1. 既可以从通道中读取数据，又可以写数据到通道。但流的读写通常是单向的。
2. 通道可以异步地读写。
3. 通道中的数据总是要先读到一个Buffer，或者总是要从一个Buffer中写入。
正如上面所说，从通道读取数据到缓冲区，从缓冲区写入数据到通道。

FileChannel
DatagramChannel
SocketChannel
ServerSocketChannel

## Buffer

## Selector

