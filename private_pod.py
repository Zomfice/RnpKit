#!/usr/bin/python
# encoding:utf-8

import fileinput
import os
import sys
import getopt
opts, args = getopt.getopt(sys.argv[1:], "hc:t:a:",["push=","repo","ck","tag="])
commit_str=""
tag_str=""

def push(hasNext):
    st = os.popen("git st").read()
    if "nothing to commit, working tree clean" in st:
        print("没有新代码需要提交")
        sys.exit()
    cm = ""
    if len(commit_str) != 0 :
        cm = commit_str
    else:
        cm = raw_input("commit: ")
    add = "git add ."
    cm = "git commit -m '%s'" % cm
    pull = "git pull origin master"
    push = "git push origin master"
    # os.system(add)
    osSystem(add)
    # os.system(cm)
    osSystem(cm)
    # os.system(pull)
    osSystem(pull)
    # os.system(push)
    osSystem(push)
    nextCmd(hasNext)
    return

def push_tag(hasNext):
    print("tag")
    tag = ""
    if len(tag_str) != 0:
        tag = tag_str
    else:
        tag = raw_input("tag: ")
    # os.system()
    # os.system()
    osSystem("git tag %s" %tag)
    osSystem("git push --tags")
    nextCmd(hasNext)
    return

def repo_push(hasNext):
    # print("repo")
    dir = os.getcwd()
    ilist = os.listdir(dir)
    podspec = ""
    print(dir,ilist);
    for i in ilist:
        if i.endswith(".podspec"):
            print(ilist)
            podspec = i
            print(podspec)
            break
    specs = "RnpKit" #需要手动修改
    repo_push_str = "pod trunk push %s %s --allow-warnings " %(specs,podspec)
    osSystem(repo_push_str)
    nextCmd(hasNext)
    return

def check(hasNext):
    sm = "pod spec lint --verbose --allow-warnings"
    osSystem(sm)
    nextCmd(hasNext)
    return

def nextCmd(hasNext):
    if hasNext == True:
        cmd()
    else:
        pass

def osSystem(sm):
    if os.system(sm) != 0:
        print("\n报错啦: '%s'\n" %sm)
        sys.exit()

def all_cmd():
    check(False)
    push(False)
    push_tag(False)
    repo_push(False)
    pass
def cmd():
    command = raw_input("CMD: ")
    print("command: %s" %command)
    if command == "push" :
        push(True)
    elif command == "tag":
        push_tag(True)
    elif command == "exit":
        sys.exit(True)
    elif command == "repo":
        repo_push(True)
    elif command == "check":
        check(True)
    elif command == "all":
        all_cmd()
        pass
    else:
        print("请输入:'push','tag','repo','check','exit'")
        cmd()
    return
#"hc:t:a:",["push=","repo","ck","tag="]
# 获取终端输入参数
for op, value in opts:
  print("yty " + op)
  if op == "-c":
      commit_str = value
  elif op == "-t":
      tag_str = value
  elif op == "-a":
      commit_str = value
      tag_str = value
  elif op == "--push":
      commit_str = value
      push(False)
      sys.exit()
  elif op == "--repo":
      repo_push(False)
      sys.exit()
  elif op == "--ck":
      print("ck 测试")
      check(False)
      sys.exit()
  elif op == "--tag":
      tag_str = value
      push_tag(False)
      sys.exit()
  elif op == "-h":
      print("-a commit以及tag使用相同的标识\n-c commit\n-t tag\n--push 只push\n--repo 只推送到仓库\n--ck 只校验\n--tag 只推送tag\nnone 调用原始写法")
      sys.exit()

if len(commit_str) != 0 or len(tag_str) != 0:
    all_cmd()
    sys.exit()

cmd()
