.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 306
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 307
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 308
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 14
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 312
    const/4 v8, 0x0

    .line 313
    .local v8, "lookupUri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 314
    .local v3, "createUri":Landroid/net/Uri;
    const/4 v9, 0x0

    .line 315
    .local v9, "trigger":Z
    const/4 v5, 0x0

    .line 317
    .local v5, "getUri":Ljava/lang/String;
    if-eqz p2, :cond_3

    check-cast p2, Landroid/os/Bundle;

    .end local p2    # "cookie":Ljava/lang/Object;
    move-object/from16 v4, p2

    .line 319
    .local v4, "extras":Landroid/os/Bundle;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 357
    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    .line 358
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 362
    :cond_1
    iget-object v10, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    # setter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v10, v8}, Landroid/widget/QuickContactBadge;->access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 363
    iget-object v10, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    # invokes: Landroid/widget/QuickContactBadge;->onContactUriChanged()V
    invoke-static {v10}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;)V

    .line 365
    if-eqz v9, :cond_7

    if-eqz v8, :cond_7

    .line 367
    iget-object v10, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v10}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    const/4 v12, 0x3

    iget-object v13, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v13, v13, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v10, v11, v8, v12, v13}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 378
    :cond_2
    :goto_2
    return-void

    .line 317
    .end local v4    # "extras":Landroid/os/Bundle;
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_3
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 321
    .end local p2    # "cookie":Ljava/lang/Object;
    .restart local v4    # "extras":Landroid/os/Bundle;
    :pswitch_0
    const/4 v9, 0x1

    .line 322
    :try_start_0
    const-string/jumbo v10, "uri_content"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 324
    if-eqz v5, :cond_4

    .line 325
    const-string/jumbo v10, "tel"

    const/4 v11, 0x0

    invoke-static {v10, v5, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 330
    :cond_4
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 331
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 332
    .local v1, "contactId":J
    const/4 v10, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 333
    .local v7, "lookupKey":Ljava/lang/String;
    invoke-static {v1, v2, v7}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 334
    goto :goto_1

    .line 339
    .end local v1    # "contactId":J
    .end local v7    # "lookupKey":Ljava/lang/String;
    :pswitch_2
    const/4 v9, 0x1

    .line 340
    const-string/jumbo v10, "uri_content"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 342
    if-eqz v5, :cond_5

    .line 343
    const-string/jumbo v10, "mailto"

    const/4 v11, 0x0

    invoke-static {v10, v5, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 348
    :cond_5
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 349
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 350
    .restart local v1    # "contactId":J
    const/4 v10, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 351
    .restart local v7    # "lookupKey":Ljava/lang/String;
    invoke-static {v1, v2, v7}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    goto/16 :goto_1

    .line 357
    .end local v1    # "contactId":J
    .end local v7    # "lookupKey":Ljava/lang/String;
    :catchall_0
    move-exception v10

    if-eqz p3, :cond_6

    .line 358
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 357
    :cond_6
    throw v10

    .line 369
    :cond_7
    if-eqz v3, :cond_2

    .line 371
    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v6, v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 372
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_8

    .line 373
    const-string/jumbo v10, "uri_content"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v6, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 376
    :cond_8
    iget-object v10, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v10}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
