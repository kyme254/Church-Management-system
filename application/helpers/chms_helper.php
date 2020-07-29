<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');



if (!function_exists('getBasic')) {

    /*     * ************************** */
    /*     * **** Get Basic ***** */
    /*     * ************************** */

    function getBasic() {
        $ci = & get_instance(); //get main CodeIgniter object		
        $ci->load->database(); //load databse library
        $query = $ci->db->get('websitebasic');
        if ($query->num_rows() > 0) {
            $result = $query->result()[0];
            return $result;
        } else {
            //Default Currency USD Because No Row Founds In Table
            return false;
        }
    }

}


if (!function_exists('globalCurrency')) {

    /*     * ************************** */
    /*     * **** Global Currency ***** */
    /*     * ************************** */

    function globalCurrency() {
        $ci = & get_instance(); //get main CodeIgniter object		
        $ci->load->database(); //load databse library
        $query = $ci->db->get('websitebasic');
        if ($query->num_rows() > 0) {
            $result = $query->result();
            foreach ($result as $row) {
                $currency = $row->currency . " ";
            }
            return $currency;
        } else {
            //Default Currency USD Because No Row Founds In Table
            return false;
        }
    }

}


if (!function_exists('getCreateDate')) {

    /*     * ************************** */
    /*     * **** Get Table Create Date ***** */
    /*     * ************************** */

    function getCreateDate($orderby, $table) {
        $ci = & get_instance(); //get main CodeIgniter object		
        $ci->load->database(); //load databse library
        $ci->db->order_by($orderby, "desc");
        $ci->db->limit(1);
        $query = $ci->db->get($table);

//                $result = $query;
//                return $result;

        if ($query->num_rows() > 0) {
            $result = $query->result();
            foreach ($result as $row) {
                $cdate = $row->cdate;
            }
            return $cdate;
        } else {
            //Default Currency USD Because No Row Founds In Table
            return false;
        }
    }

}



if (!function_exists('validPurchase')) {

    /*     * ************************** */
    /*     * **** Item Purchase Validation ***** */
    /*     * ************************** */

    function validPurchase($purchase_key) {
        $username = 'princejohn25';
        $api_key = '9qzsnpfp5lqjy8k5qx84nheghq2pz24j';

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, "http://marketplace.envato.com/api/edge/" . $username . "/" . $api_key . "/verify-purchase:" . $purchase_key . ".json");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        $agent = 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)';
        curl_setopt($ch, CURLOPT_USERAGENT, $agent);
        $purchase_data = json_decode(curl_exec($ch), true);
        curl_close($ch);

        return $purchase_data;
    }

}


if (!function_exists('shortCode')) {

    /*     * ************************** */
    /*     * **** ShortCode Pastor ***** */
    /*     * ************************** */

    function shortCode($type, $table, $sort, $sortby, $quantity) {
        $table = str_replace(' ', '', $table);

        $ci = & get_instance(); //get main CodeIgniter object		
        $ci->load->database(); //load databse library

        if ($sort && $sortby) {
            $ci->db->order_by($sortby, $sort);
        }
        if ($quantity) {
            $ci->db->limit($quantity);
        }

        $query = $ci->db->get($table);

        if ($query->num_rows() > 0) {
            $result = $query->result();

            $resultHtml = "";

            if ($type == "speech") {
                $resultHtml = "<div class='owl-carousel'>";
            } else if ($type == "event" && $table == "seminar") {
                $resultHtml = "<div class='row'>";
            }

            $i = 0;
            foreach ($result as $row) {
                $i++;

                if ($table == "pastor") {
                    $peopleid = $row->pastorid;
                } elseif ($table == "committee") {
                    $peopleid = $row->committeeid;
                } elseif ($table == "member") {
                    $peopleid = $row->memberid;
                } elseif ($table == "chorus") {
                    $peopleid = $row->chorusid;
                } elseif ($table == "clan") {
                    $peopleid = $row->clanid;
                } elseif ($table == "student") {
                    $peopleid = $row->studentid;
                } elseif ($table == "staff") {
                    $peopleid = $row->staffid;
                } elseif ($table == "sundayschool") {
                    $peopleid = $row->sschoolid;
                } elseif ($table == "speech") {
                    $peopleid = $row->speechid;
                } else {
                    $peopleid = "";
                }

                if ($type == "group") {
                    $resultHtml .= "<div class='col-lg-3 col-md-3 col-sm-6 col-xs-12'>
                                <div class='pastors'>
                                    <img src='" . base_url() . "images/$table/profile/$row->profileimage' alt='$row->fname'></img>
                                    <h5>$row->position</h5>
                                    <h4><a target='_blank' href='" . base_url() . "home/$table/view/$peopleid'>$row->fname $row->lname</a></h4>
                                </div>
                            </div>";
                } else if ($type == "speech") {
                    $resultHtml .= "<div class='col-md-offset-2 col-lg-8 col-md-8 col-sm-12 col-xs-12'>
                                    <div class='pastors'>
                                            <img src='" . base_url() . "images/" . $table . "/profile/$row->profileimage' alt='$row->fname'></img>
                                            <h4>$row->fname $row->lname</h4>
                                            <h5>$row->position</h5>
                                            <p>" . word_limiter(strip_tags($row->speech), 100) . "</p><a class='read_more' href='" . base_url() . "home/speech/view/" . $row->speechid . "' data-toggle='modal' data-target='" . base_url() . "home/speech/view/" . $row->speechid . "'>Read More...</a>
                                    </div>
                            </div>";
                } else if ($type == "event" && $table == "seminar") {

                    if ($i % 4 == 0 && $i != 0) {
                        $resultHtml .= '</div><div class="row">';
                    }

                    $resultHtml .= "<div class='col-lg-4 col-md-4 col-sm-12 col-xs-12'>
                                <div class='seminar'>
                                    <img src=' " . base_url() . "images/$table/banner/$row->seminarbanner' alt='$table'></img>
                                    <h4><a target='_blank' href=' " . base_url() . "home/$table/view/$row->seminarid'>$row->seminartitle</a></h4>
                                </div>
                            </div>";
                } else if ($type == "event" && $table == "sermon") {

                    $resultHtml .= "<div class='sermon'>
                                        <div class='left'>
                                            <img src='" . base_url() . "images/sermon/feature/" . $row->sermonbanner .  "' alt='" . $row->sermontitle . "'>
                                        </div>
                                        <div class='center'>
                                            <h4 class='title'><a href='" . base_url() . "home/sermon/view/" . $row->sermonid . "'>" . $row->sermontitle . "</a></h4>
                                            <span class='elements'>Time - " . $row->sermontime . " | Date - " . $row->sermondate . " | Pastor/Writer/Author - " . $row->sermonauthor . "</span>
                                        </div>    
                                        <div class='right'>
                                            <button class='btn '><a href='" . base_url() . "home/sermon/view/" . $row->sermonid . "'><i class='fa fa-music fa-fw'></i> Audio</a></button> 
                                            <button class='btn '><a href='" . base_url() . "home/sermon/view/" . $row->sermonid . "'><i class='fa fa-youtube fa-fw'></i> Video</a></button> 
                                        </div>
                                    </div>";
                }
            }

            if ($type == "event" && $table == "seminar") {                
                $resultHtml .= '</div>';
            } else if ($type == "speech") {
                $resultHtml .= "</div>";
            }

            return $resultHtml;
        } else {
            //Default Currency USD Because No Row Founds In Table
            return false;
        }
    }

}