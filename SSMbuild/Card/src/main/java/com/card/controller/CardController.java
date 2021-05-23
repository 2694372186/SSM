package com.card.controller;

import com.card.pojo.Card;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/shop")
public class CardController{
    private Card card1=new Card(1,"Apple  iphone 12",1,5499,"苹果手机.jpg");
    private Card card2=new Card(2,"ELLE时尚女包",1,319,"女包.jpg");
    private Card card3=new Card(3,"我的精神家园",1,40,"书.jpg");
    private Card card4=new Card(4,"TENMA收纳盒",1,79,"收纳盒.jpg");


    @RequestMapping("/goShop")
    public String goShop(){
        return "shopping";
    }

    @RequestMapping("/add")
    public String addShop(HttpSession session,int id){
        Map<Integer,Card> map=new HashMap<>();  //商城中商品map
        map.put(1,card1);
        map.put(2,card2);
        map.put(3,card3);
        map.put(4,card4);
        List<Card> cardList= (List<Card>) session.getAttribute("cardList");
        //判断session是否存在
            if(cardList==null){ //若购物车内为空 则直接加入
                cardList=new ArrayList<>();//创建cardList
                cardList.add(map.get(id));
            }else { //若不为空
                    // 1.该商品存在 给商品数量加1
                    // 2. 商品不存在，加入该商品
                Map<Integer,Card> mapCard=new HashMap<>();     //购物车中物品的map
                int i=1;
                for(Card card:cardList){
                    mapCard.put(i,card);
                    i++;
                }
                if(mapCard.containsKey(id)){ //存在 则数量加1
                    mapCard.get(id).setCount(mapCard.get(id).getCount()+1);
                }else {// 不存在 则加入
                    cardList.add(map.get(id));
                }

            }
        session.setAttribute("cardList",cardList);
            //计算总价格
        double sum=0;
        for(Card card:cardList){
            sum=sum+(card.getCount()*card.getPrice());
        }
        session.setAttribute("sum",sum);
        System.out.println(cardList.toString());
        return "card";
    }

    @RequestMapping("/goCard")
    public String goCard(){
        return "card";
    }

    @RequestMapping("/delete/{id}")
    public String delete(HttpSession session,@PathVariable("id") int id){
        //获取当前购物车该物品信息
        List<Card> cardList = (List<Card>) session.getAttribute("cardList");

        //判断该物品数量是否为1
        for(Card card:cardList){
            if(card.getId()==id){//获取到该商品信息
                if(card.getCount()==1){
                    cardList.remove(card);// 数量为1 则删除
                }else {
                    card.setCount(card.getCount()-1); // 否则 减少数量
                }
            }
        }
        session.setAttribute("cardList",cardList); // 覆盖原来的session
        double sum=0;
        for(Card card:cardList){
            sum=sum+(card.getCount()*card.getPrice());
        }
        session.setAttribute("sum",sum);
        return "card";
    }

    @RequestMapping("/insert/{id}")
    public String insert(HttpSession session,@PathVariable("id") int id){
        //获取当前购物车该物品信息
        List<Card> cardList = (List<Card>) session.getAttribute("cardList");

        for(Card card:cardList){
            if(card.getId()==id){//获取到该商品信息
                card.setCount(card.getCount()+1); // 增加数量
            }
        }
        session.setAttribute("cardList",cardList); // 覆盖原来的session
        double sum=0;
        for(Card card:cardList){
            sum=sum+(card.getCount()*card.getPrice());
        }
        session.setAttribute("sum",sum);
        return "card";

    }



}
