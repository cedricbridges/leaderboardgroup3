<%
final class Student implements Comparable<Student> {
    public Double score;
    public String firstName;
    public String lastName;
    private boolean hidden;
    private String userName;
    private int prevRank;
    private int currentRank;
    private String statStanding;

    
    public Student(String firstName, String lastName, Double score, String userName) {
        this.score = score;
        this.firstName = firstName;
        this.lastName = lastName;
        this.hidden = false;
        this.userName = userName;
        this.prevRank = 0;
    }
    
    public String getUserName(){
    	
    	return userName;
    }
    
    public int compareTo(Student s) {
    	if (this.score > s.score) {
    		return 1;
    	}
    	else if (this.score < s.score) {
    		return -1;
    	}
    	else { return 0; }	    	
    }
    //Group 3 changes
    public void setCurrentRank(int currentRank){
    	this.currentRank = currentRank;
    	if(this.currentRank < this.prevRank){
    		statStanding = "+";
    	}
    	else if(this.currentRank > this.prevRank){
    		statStanding = "-";
    	}
    	else
    		statStanding = " ";
    }
    
    public int getCurrentRank(){
    	return currentRank;
    }
    
    public String getStanding(){
    	return statStanding;
    }
    
    public void setPrevRank(int prevRank){
    	this.prevRank = prevRank;
    }
    
    public void resetRank(){
    	this.currentRank = 0;
    }
    //End of group 3 changes
    public void setHidden(boolean hidden) {
    	this.hidden = hidden;
    }
    
    public boolean getHidden() {
    	return this.hidden;
    }
} //end of class Student
%>