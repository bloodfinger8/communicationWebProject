package boardreply.bean;

import lombok.Data;

@Data
public class BoardReplyDTO {
	private int seq;
    private int pseq;             
    private String id;  
    private String content; 
    private String logtime;  
}
