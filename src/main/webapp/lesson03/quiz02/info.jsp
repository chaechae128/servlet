<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <section class="content1">
            <h4>곡 정보</h4>
            <div class="d-flex py-3 border border-success p-3 mb-3"> 
               <%
                  // 아이유 노래 리스트 
                  List<Map<String, Object>> musicList = new ArrayList<>();
   
                  Map<String, Object> musicInfo = new HashMap<>();
                  musicInfo.put("id", 1);
                  musicInfo.put("title", "팔레트");
                  musicInfo.put("album", "Palette");
                  musicInfo.put("singer", "아이유");
                  musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
                  musicInfo.put("time", 217);
                  musicInfo.put("composer", "아이유");
                  musicInfo.put("lyricist", "아이유");
                  musicList.add(musicInfo);
   
                  musicInfo = new HashMap<>();
                  musicInfo.put("id", 2);
                  musicInfo.put("title", "좋은날");
                  musicInfo.put("album", "Real");
                  musicInfo.put("singer", "아이유");
                  musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
                  musicInfo.put("time", 233);
                  musicInfo.put("composer", "이민수");
                  musicInfo.put("lyricist", "김이나");
                  musicList.add(musicInfo);
   
                  musicInfo = new HashMap<>();
                  musicInfo.put("id", 3);
                  musicInfo.put("title", "밤편지");
                  musicInfo.put("album", "palette");
                  musicInfo.put("singer", "아이유");
                  musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
                  musicInfo.put("time", 253);
                  musicInfo.put("composer", "제휘,김희원");
                  musicInfo.put("lyricist", "아이유");
                  musicList.add(musicInfo);
   
                  musicInfo = new HashMap<>();
                  musicInfo.put("id", 4);
                  musicInfo.put("title", "삐삐");
                  musicInfo.put("album", "삐삐");
                  musicInfo.put("singer", "아이유");
                  musicInfo.put("thumbnail",
                        "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
                  musicInfo.put("time", 194);
                  musicInfo.put("composer", "이종훈");
                  musicInfo.put("lyricist", "아이유");
                  musicList.add(musicInfo);
   
                  musicInfo = new HashMap<>();
                  musicInfo.put("id", 5);
                  musicInfo.put("title", "스물셋");
                  musicInfo.put("album", "CHAT-SHIRE");
                  musicInfo.put("singer", "아이유");
                  musicInfo.put("thumbnail",
                        "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
                  musicInfo.put("time", 194);
                  musicInfo.put("composer", "아이유,이종훈,이채규");
                  musicInfo.put("lyricist", "아이유");
                  musicList.add(musicInfo);
   
                  musicInfo = new HashMap<>();
                  musicInfo.put("id", 6);
                  musicInfo.put("title", "Blueming");
                  musicInfo.put("album", "Love poem");
                  musicInfo.put("singer", "아이유");
                  musicInfo.put("thumbnail",
                        "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
                  musicInfo.put("time", 217);
                  musicInfo.put("composer", "아이유,이종훈,이채규");
                  musicInfo.put("lyricist", "아이유");
                  musicList.add(musicInfo);
                  
                  Map<String, Object> target = null;
                  
                  if (request.getParameter("id") != null){         
                     // 1. 목록에서 클릭한 경우(id 값)
                     int id = Integer.parseInt(request.getParameter("id"));
                     
                     for (Map<String, Object> list : musicList) {
                        if (id == (int)list.get("id")){
                           target = list;
                           break;
                        }
                     }
                  }
                  
                  // 2. 상단에서 폼태그로 검색한 경우 (search 값)
                  if (request.getParameter("search") != null) {
                     String search = request.getParameter("search");
                     for (Map<String, Object> list : musicList) {
                        if (search.equals(list.get("title"))){
                           target = list;
                           break;
                        }
                     }
                  }
                  
               %>
               <div class="mr-4">
                  <img src="<%=target.get("thumbnail") %>" width=150 alt="가수 이미지">
               </div>
               <div>
                  <div class="display-4"><%=target.get("title") %></div>
                  <div class="mt-2 text-success font-weight-bold"><%=target.get("singer") %></div>
                  <div class="d-flex music-info mt-2">
                     <div class="mr-3">
                        <div>앨범</div>
                        <div>재생시간</div>
                        <div>작곡가</div>
                        <div>작사가</div>
                     </div>
                     <div>
                        <div><%=target.get("title") %></div>
                        <div><%=(int)target.get("time")/60 %>:<%=(int)target.get("time")%60 %></div>
                        <div><%=target.get("composer") %></div>
                        <div><%=target.get("lyricist") %></div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <section class="content2">
            <h4>가사</h4>
            <div class="border border-left-0 border-right-0 border-secondary">
               <div class="mt-3 mb-5">가사 정보 없음</div>
            </div>
         </section>