.class public Lcom/loc/ct;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field private bkQ:Lcom/loc/aC;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/loc/aC;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p5, p0, Lcom/loc/ct;->bkQ:Lcom/loc/aC;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    iget-object v0, p0, Lcom/loc/ct;->bkQ:Lcom/loc/aC;

    invoke-interface {v0, p1}, Lcom/loc/aC;->bzm(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    iget-object v0, p0, Lcom/loc/ct;->bkQ:Lcom/loc/aC;

    invoke-interface {v0, p1, p2, p3}, Lcom/loc/aC;->bzn(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
