package com.fowait;

import java.util.*;

public class test {
    public static void main(String[] args) {
        /*
        生成不重复的随机数
         */
        Map<Object, Integer> map = new HashMap<>();
        int num = 500000;
        List list = new ArrayList();
        Random random = new Random();
        int count = 0;
        while (count<num){
            int i = random.nextInt(num);
            if(map.containsKey(i)){
                map.put(i,map.get(i)+1);
            } else {
                map.put(i,1);
                list.add(i);
                count++;
            }
        }
        long start = System.currentTimeMillis();
        List list1 = randomReturn(list);
        System.out.println(list1.size());
        long end = System.currentTimeMillis();
        System.out.println("运行时间" + (end-start));
        /*
        判断有没有重复
         */
        map = new HashMap<>();
        for (int i = 0; i < list1.size(); i++) {

            int index = (int) list1.get(i);
            if(map.containsKey(index)){
                map.put(index,map.get(index)+1);
                System.out.println(map.get(index)+ " " +index);
            } else {
                map.put(index,1);
            }
        }


    }
    public static List randomReturn(List list){
        List<Object> list1 = new ArrayList<>();
        int count = 0;
        Map<Object, Integer> map = new HashMap<>();
        Random random = new Random();
        while(count<list.size()/5) {
            int index = random.nextInt(list.size());
            if(map.containsKey(index)){
                map.put(index,map.get(index)+1);
            } else {
                map.put(index,1);
                list1.add(list.get(index));
                count++;
            }
        }
        return list1;
    }
}

