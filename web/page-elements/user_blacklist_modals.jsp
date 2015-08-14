<%-- 
    Document   : report_view_models
    Created on : Aug 12, 2015, 9:41:25 AM
    Author     : SithuDewmi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <div id="confirm_unblock"  class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false" data-width="350" style="display: none;">
            <div class="modal-header">
                <h4 class="modal-title"><input type="radio" class="square-green" value="" checked="checked" >Confirmation</h4>
            </div>
            <div class="modal-body">
                <span id="email_unblock_spanid"></span>
                <form action="BlacklistedUsers" method="Post" id="formUnblock">
                    <input type="hidden" id="email_unblockid" name="email_unblock" value="">
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" data-dismiss="modal" class="btn btn-light-grey">
                    Cancel
                </button>
                <button type="button" class="btn btn-blue" onclick="document.getElementById('formUnblock').submit()">
                    Unblock
                </button>
            </div>
        </div>

        <div id="confirm_block"  class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false" data-width="350" style="display: none;">
            <div class="modal-header">
                <h4 class="modal-title"><input type="radio" class="square-green" value="" checked="checked" >Confirmation</h4>
            </div>
            <div class="modal-body">
                <span id="email_block_spanid"></span>
                <form action="BlacklistedUsers" method="Post" id="formblock">
                    <input type="hidden" id="email_blockid" name="email_block" value="">
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" data-dismiss="modal" class="btn btn-light-grey">
                    Cancel
                </button>
                <button type="button" class="btn btn-blue" onclick="document.getElementById('formblock').submit()">
                    Block
                </button>
            </div>
        </div>
    </body>
</html>
