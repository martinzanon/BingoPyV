<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="BingoPyV._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title></title>
        <link href="resources/jquery/css/jquery-ui.css" rel="stylesheet" />
        <style>

           body {
                margin: 0;
            }

	        .dhx_layout-cell-content:not(.dhx_layout-cell) {
		        padding: 12px;
	        }

	        .bg-gray {
		        background-color: #bea3a3;
	        }

	        .bg-blue {
		        background-color: rgb(127, 127, 231);
	        }

	        .layout-footer {
		        background: #0288d1;
		        color: #fff;
		        font-size: 24px;
		        font-weight: 800;
	        }

	        
	        .layout-header {
		        background: #0288d1;
		        color: #fff;
		        font-size: 20px;		        
                height:50px;
                font-family:Verdana, Geneva, Tahoma, sans-serif;
                font-weight: 600;
                padding-top:10px;
                padding-left:5px

	        }
             
            .Celda{
                background-color:#E1F0FF;
                border-color:#336699;
                border-width:2px;
                border-style:solid;
                font-weight:bold;
                font-family:Arial;
                color:#000066;
                height:61px;
                text-align:center;
                vertical-align:middle;
                width:80px;
                font-size:46px
            }

            .CeldaSeleccionada{
                background-color:#1976D2;
                border-color:#336699;
                border-width:2px;
                border-style:solid;
                font-weight:bold;
                font-family:Arial;
                color:white;
                height:61px;
                text-align:center;
                vertical-align:middle;
                width:80px;
                font-size:46px
            }
            
            .CeldaActual{
                background-color:#E1F0FF;
                border-color:#336699;
                border-width:2px;
                border-style:solid;
                font-weight:bold;
                font-family:Arial;
                color:#000066;
                height:220px;
                text-align:center;
                vertical-align:middle;           
                font-size:240px
            }

            .Boton {
                text-align:center;
                border-style:solid;
                border-color:darkgrey;
                border-width:6px;
                cursor:pointer;
            }
	         .BotonSeleccionado {
                text-align:center;
                border-style:solid;
                border-color:#0288d1;
                border-width:6px;
                cursor:pointer;
            }
            .Velocidad {
                font-size:13px;
                color:blue;
                font-weight:bold;
                font-family:Verdana, Geneva, Tahoma, sans-serif;
                padding:2px
            }

        </style>
            
        
    </head>
    <body>
        
        <form id="form1" runat="server">

            <asp:HiddenField ID="CantRestante" runat="server" Value="91" />
            <div class="layout-header">Bingo Principios y Valores Las Heras - Mendoza Version 1.0.0.0</div>
            <div id="layout_container"" >

                <table> 

                     <tr>  
                      
                        <td>

                            <asp:Table ID="Tablero" runat="server" ForeColor="White">  

                                <asp:TableRow ID="Fila0" runat="server" TabIndex="1">
                
                                    <asp:TableCell ID="Celda0" runat="server" CssClass="Celda" >&nbsp;</asp:TableCell>
                                    <asp:TableCell ID="Celda10" runat="server" CssClass="Celda" >10</asp:TableCell>
                                    <asp:TableCell ID="Celda20" runat="server" CssClass="Celda" >20</asp:TableCell>
                                    <asp:TableCell ID="Celda30" runat="server" CssClass="Celda" >30</asp:TableCell>
                                    <asp:TableCell ID="Celda40" runat="server" CssClass="Celda" >40</asp:TableCell>
                                    <asp:TableCell ID="Celda50" runat="server" CssClass="Celda" >50</asp:TableCell>
                                    <asp:TableCell ID="Celda60" runat="server" CssClass="Celda" >60</asp:TableCell>
                                    <asp:TableCell ID="Celda70" runat="server" CssClass="Celda" >70</asp:TableCell>
                                    <asp:TableCell ID="Celda80" runat="server" CssClass="Celda" >80</asp:TableCell>
                                    <asp:TableCell ID="Celda90" runat="server" CssClass="Celda" >90</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="Fila1" runat="server" TabIndex="1">
                                    <asp:TableCell ID="Celda1" runat="server" CssClass="Celda" >1</asp:TableCell>
                                    <asp:TableCell ID="Celda11" runat="server" CssClass="Celda" >11</asp:TableCell>
                                    <asp:TableCell ID="Celda21" runat="server" CssClass="Celda" >21</asp:TableCell>
                                    <asp:TableCell ID="Celda31" runat="server" CssClass="Celda" >31</asp:TableCell>
                                    <asp:TableCell ID="Celda41" runat="server" CssClass="Celda" >41</asp:TableCell>
                                    <asp:TableCell ID="Celda51" runat="server" CssClass="Celda" >51</asp:TableCell>
                                    <asp:TableCell ID="Celda61" runat="server" CssClass="Celda" >61</asp:TableCell>
                                    <asp:TableCell ID="Celda71" runat="server" CssClass="Celda" >71</asp:TableCell>
                                    <asp:TableCell ID="Celda81" runat="server" CssClass="Celda" >81</asp:TableCell>
                                    <asp:TableCell ID="Celda91" runat="server" CssClass="Celda" >&nbsp;</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="Fila2" runat="server" TabIndex="1">
                                    <asp:TableCell ID="Celda2" runat="server" CssClass="Celda" >2</asp:TableCell>
                                    <asp:TableCell ID="Celda12" runat="server" CssClass="Celda" >12</asp:TableCell>
                                    <asp:TableCell ID="Celda22" runat="server" CssClass="Celda" >22</asp:TableCell>
                                    <asp:TableCell ID="Celda32" runat="server" CssClass="Celda" >32</asp:TableCell>
                                    <asp:TableCell ID="Celda42" runat="server" CssClass="Celda" >42</asp:TableCell>
                                    <asp:TableCell ID="Celda52" runat="server" CssClass="Celda" >52</asp:TableCell>
                                    <asp:TableCell ID="Celda62" runat="server" CssClass="Celda" >62</asp:TableCell>
                                    <asp:TableCell ID="Celda72" runat="server" CssClass="Celda" >72</asp:TableCell>
                                    <asp:TableCell ID="Celda82" runat="server" CssClass="Celda" >82</asp:TableCell>
                                    <asp:TableCell ID="Celda92" runat="server" CssClass="Celda" >&nbsp;</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="Fila3" runat="server" TabIndex="1">
                                    <asp:TableCell ID="Celda3" runat="server" CssClass="Celda" >3</asp:TableCell>
                                    <asp:TableCell ID="Celda13" runat="server" CssClass="Celda" >13</asp:TableCell>
                                    <asp:TableCell ID="Celda23" runat="server" CssClass="Celda" >23</asp:TableCell>
                                    <asp:TableCell ID="Celda33" runat="server" CssClass="Celda" >33</asp:TableCell>
                                    <asp:TableCell ID="Celda43" runat="server" CssClass="Celda" >43</asp:TableCell>
                                    <asp:TableCell ID="Celda53" runat="server" CssClass="Celda" >53</asp:TableCell>
                                    <asp:TableCell ID="Celda63" runat="server" CssClass="Celda" >63</asp:TableCell>
                                    <asp:TableCell ID="Celda73" runat="server" CssClass="Celda" >73</asp:TableCell>
                                    <asp:TableCell ID="Celda83" runat="server" CssClass="Celda" >83</asp:TableCell>
                                    <asp:TableCell ID="Celda93" runat="server" CssClass="Celda" >&nbsp;</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="Fila4" runat="server" TabIndex="1">
                                    <asp:TableCell ID="Celda4" runat="server" CssClass="Celda" >4</asp:TableCell>
                                    <asp:TableCell ID="Celda14" runat="server" CssClass="Celda" >14</asp:TableCell>
                                    <asp:TableCell ID="Celda24" runat="server" CssClass="Celda" >24</asp:TableCell>
                                    <asp:TableCell ID="Celda34" runat="server" CssClass="Celda" >34</asp:TableCell>
                                    <asp:TableCell ID="Celda44" runat="server" CssClass="Celda" >44</asp:TableCell>
                                    <asp:TableCell ID="Celda54" runat="server" CssClass="Celda" >54</asp:TableCell>
                                    <asp:TableCell ID="Celda64" runat="server" CssClass="Celda" >64</asp:TableCell>
                                    <asp:TableCell ID="Celda74" runat="server" CssClass="Celda" >74</asp:TableCell>
                                    <asp:TableCell ID="Celda84" runat="server" CssClass="Celda" >84</asp:TableCell>
                                    <asp:TableCell ID="Celda94" runat="server" CssClass="Celda" >&nbsp;</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="Fila5" runat="server" TabIndex="1">
                                    <asp:TableCell ID="Celda5" runat="server" CssClass="Celda" >5</asp:TableCell>
                                    <asp:TableCell ID="Celda15" runat="server" CssClass="Celda" >15</asp:TableCell>
                                    <asp:TableCell ID="Celda25" runat="server" CssClass="Celda" >25</asp:TableCell>
                                    <asp:TableCell ID="Celda35" runat="server" CssClass="Celda" >35</asp:TableCell>
                                    <asp:TableCell ID="Celda45" runat="server" CssClass="Celda" >45</asp:TableCell>
                                    <asp:TableCell ID="Celda55" runat="server" CssClass="Celda" >55</asp:TableCell>
                                    <asp:TableCell ID="Celda65" runat="server" CssClass="Celda" >65</asp:TableCell>
                                    <asp:TableCell ID="Celda75" runat="server" CssClass="Celda" >75</asp:TableCell>
                                    <asp:TableCell ID="Celda85" runat="server" CssClass="Celda" >85</asp:TableCell>
                                    <asp:TableCell ID="Celda95" runat="server" CssClass="Celda" >&nbsp;</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="Fila6" runat="server" TabIndex="1">
                                    <asp:TableCell ID="Celda6" runat="server" CssClass="Celda" >6</asp:TableCell>
                                    <asp:TableCell ID="Celda16" runat="server" CssClass="Celda" >16</asp:TableCell>
                                    <asp:TableCell ID="Celda26" runat="server" CssClass="Celda" >26</asp:TableCell>
                                    <asp:TableCell ID="Celda36" runat="server" CssClass="Celda" >36</asp:TableCell>
                                    <asp:TableCell ID="Celda46" runat="server" CssClass="Celda" >46</asp:TableCell>
                                    <asp:TableCell ID="Celda56" runat="server" CssClass="Celda" >56</asp:TableCell>
                                    <asp:TableCell ID="Celda66" runat="server" CssClass="Celda" >66</asp:TableCell>
                                    <asp:TableCell ID="Celda76" runat="server" CssClass="Celda" >76</asp:TableCell>
                                    <asp:TableCell ID="Celda86" runat="server" CssClass="Celda" >86</asp:TableCell>
                                    <asp:TableCell ID="Celda96" runat="server" CssClass="Celda" >&nbsp;</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="Fila7" runat="server" TabIndex="1">
                                    <asp:TableCell ID="Celda7" runat="server" CssClass="Celda" >7</asp:TableCell>
                                    <asp:TableCell ID="Celda17" runat="server" CssClass="Celda" >17</asp:TableCell>
                                    <asp:TableCell ID="Celda27" runat="server" CssClass="Celda" >27</asp:TableCell>
                                    <asp:TableCell ID="Celda37" runat="server" CssClass="Celda" >37</asp:TableCell>
                                    <asp:TableCell ID="Celda47" runat="server" CssClass="Celda" >47</asp:TableCell>
                                    <asp:TableCell ID="Celda57" runat="server" CssClass="Celda" >57</asp:TableCell>
                                    <asp:TableCell ID="Celda67" runat="server" CssClass="Celda" >67</asp:TableCell>
                                    <asp:TableCell ID="Celda77" runat="server" CssClass="Celda" >77</asp:TableCell>
                                    <asp:TableCell ID="Celda87" runat="server" CssClass="Celda" >87</asp:TableCell>
                                    <asp:TableCell ID="Celda97" runat="server" CssClass="Celda" >&nbsp;</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="Fila8" runat="server" TabIndex="1">
                                    <asp:TableCell ID="Celda8" runat="server" CssClass="Celda" >8</asp:TableCell>
                                    <asp:TableCell ID="Celda18" runat="server" CssClass="Celda" >18</asp:TableCell>
                                    <asp:TableCell ID="Celda28" runat="server" CssClass="Celda" >28</asp:TableCell>
                                    <asp:TableCell ID="Celda38" runat="server" CssClass="Celda" >38</asp:TableCell>
                                    <asp:TableCell ID="Celda48" runat="server" CssClass="Celda" >48</asp:TableCell>
                                    <asp:TableCell ID="Celda58" runat="server" CssClass="Celda" >58</asp:TableCell>
                                    <asp:TableCell ID="Celda68" runat="server" CssClass="Celda" >68</asp:TableCell>
                                    <asp:TableCell ID="Celda78" runat="server" CssClass="Celda" >78</asp:TableCell>
                                    <asp:TableCell ID="Celda88" runat="server" CssClass="Celda" >88</asp:TableCell>
                                    <asp:TableCell ID="Celda98" runat="server" CssClass="Celda" >&nbsp;</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="Fila9" runat="server" TabIndex="1">
                                    <asp:TableCell ID="Celda9" runat="server" CssClass="Celda" >9</asp:TableCell>
                                    <asp:TableCell ID="Celda19" runat="server" CssClass="Celda" >19</asp:TableCell>
                                    <asp:TableCell ID="Celda29" runat="server" CssClass="Celda" >29</asp:TableCell>
                                    <asp:TableCell ID="Celda39" runat="server" CssClass="Celda" >39</asp:TableCell>
                                    <asp:TableCell ID="Celda49" runat="server" CssClass="Celda" >49</asp:TableCell>
                                    <asp:TableCell ID="Celda59" runat="server" CssClass="Celda" >59</asp:TableCell>
                                    <asp:TableCell ID="Celda69" runat="server" CssClass="Celda" >69</asp:TableCell>
                                    <asp:TableCell ID="Celda79" runat="server" CssClass="Celda" >79</asp:TableCell>
                                    <asp:TableCell ID="Celda89" runat="server" CssClass="Celda" >89</asp:TableCell>
                                    <asp:TableCell ID="Celda99" runat="server" CssClass="Celda" >&nbsp;</asp:TableCell>
                                </asp:TableRow>
               
                
                            </asp:Table>

                        </td>

                        <td>

                            <table>  

                                <tr>
                
                                    <td style="text-align:center"  >
                                        <img src="img/PyV.PNG" />
                                    </td>
                                    
                                </tr>

                                <tr>
                
                                    <td  >

                                        <asp:Table ID="TablaCeldaActual" runat="server"  Width="100%">

                                            <asp:TableRow ID="FilaCeldaActual" runat="server" CssClass="CeldaActual" >

                                                <asp:TableCell ID="CeldaActual" runat="server" CssClass="CeldaActual"  ></asp:TableCell>                                                    

                                             </asp:TableRow>

                                        </asp:Table>

                                    </td>
                                    
                                    
                                </tr>

                                <tr>
                                    <td>

                                        <asp:Table ID="TablaUltimos" runat="server" >

                                            <asp:TableRow ID="FilaUltimos" runat="server" >

                                                <asp:TableCell ID="CeldaUltimos1" runat="server" CssClass="Celda" >&nbsp;</asp:TableCell>
                                                <asp:TableCell ID="CeldaUltimos2" runat="server" CssClass="Celda" >&nbsp;</asp:TableCell>
                                                <asp:TableCell ID="CeldaUltimos3" runat="server" CssClass="Celda" >&nbsp;</asp:TableCell>
                                                <asp:TableCell ID="CeldaUltimos4" runat="server" CssClass="Celda" >&nbsp;</asp:TableCell>
                                                <asp:TableCell ID="CeldaUltimos5" runat="server" CssClass="Celda" >&nbsp;</asp:TableCell>

                                            </asp:TableRow>
                                        
                                        </asp:Table>

                                    </td>

                                </tr>

                                <tr>
                                    <td style="text-align:center">
                                        
                                        <div id="slider" style="width:98%;padding-left:5px">
                                            <div id="CantSegundos" class="ui-slider-handle"></div>
                                        </div>
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td >

                                        <table id="TablaControles">  
                                            <tr id="FilaBotones" >                
                                                <td id="CeldaPlay" class="Boton"   >                                                    
                                                    <img id="imgPlay"  src="img/Play.png" style="cursor:pointer" onclick="Bingo.play();"/>
                                                </td>                                               
                                                <td id="CeldaStop" class="Boton"  >
                                                    <img id="imgStop"  src="img/Stop.png" onclick="Bingo.stop();"/>
                                                </td>
                                                 <td id="CeldaReiniciar" class="Boton"  >
                                                    <img id="imgPause"  src="img/reiniciar.png" onclick="Bingo.reiniciar();"/>
                                                </td>
                                                 <td id="CeldaSonido" class="Boton"  >
                                                    <img id="imgSonido"  src="img/sound.png" onclick="Bingo.sonido();"/>
                                                </td>
                                                                                               
                                            </tr>
                                        </table>

                                    </td>
                                    
                                </tr>

                            </table>

                        </td>

                     </tr>

                </table>

            </div>

           <select id="voces" ></select>

        </form>

        <script src="Scripts/jquery-3.6.0.min.js"></script>
        <script src="Scripts/jquery-ui.js"></script>
        <script src="Scripts/Default.js"></script>

    </body>

</html>
