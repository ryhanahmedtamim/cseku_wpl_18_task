<?php

class Task{
    
    private $_ID;
    private $_Title;
    private $_Details;
    private $_LastDateOfFinish;
    private $_AssignDate;
    private $_AssignTo;
    private $_AssignBy;
	private $_Category;    


    public function setID ( $ID ) {
        $this->_ID = $ID;
    }

    public function getID () {
        return $this->_ID;
    }


    public function setTitle( $Title ) {
        $this->_Title = $Title;
    }

    public function getTitle() {
        return $this->_Title;
    }

    public function setDetails ( $Details ) {
        $this->_Details = $Details;
    }

    public function getDetails () {
        return $this->_Details;
    }

    public function setLastDateOfFinish ( $LastDateOfFinish ) {
        $this->_LastDateOfFinish = $LastDateOfFinish;
    }

    public function getLastDateOfFinish () {
        return $this->_LastDateOfFinish;
    }

    public function setAssignDate ( $AssignDate ) {
        $this->_AssignDate = $AssignDate;
    }

    public function getAssignDate () {
        return $this->_AssignDate;
    }

    public function setAssignTo ( $AssignTo ) {
        $this->_AssignTo = $AssignTo;
    }

    public function getAssignTo () {
        return $this->_AssignTo;
    }

    public function setAssignBy ( $AssignBy ) {
        $this->_AssignBy = $AssignBy;
    }

    public function getAssignBy () {
        return $this->_AssignBy;
    }

    public function setCategory ( $Category ) {
        $this->_Category = $Category;
    }

    public function getCategory () {
        return $this->_Category;
    }

}


class Task_Category{


	private $_ID;
	private $_Category;
 	public function setID ( $ID ) {
        $this->_ID = $ID;
    }

    public function getID () {
        return $this->_ID;
    }
	public function setCategory ( $Category ) {
        $this->_Category = $Category;
    }

    public function getCategory () {
        return $this->_Category;
    }


}


?>