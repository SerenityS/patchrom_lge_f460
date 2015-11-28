.class final Lcom/android/server/power/ElectronBeam;
.super Ljava/lang/Object;
.source "ElectronBeam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEJANK_FRAMES:I = 0x3

.field private static final ELECTRON_BEAM_LAYER:I = 0x40000001

.field private static final HSTRETCH_DURATION:F = 0.5f

.field private static final LOCK_ANIMATION_RESOLUTION:I = 0x28

.field public static final MODE_COOL_DOWN:I = 0x2

.field public static final MODE_COOL_DOWN_CIRCLE:I = 0x1

.field public static final MODE_FADE:I = 0x0

.field public static final MODE_WARM_UP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ElectronBeam"

.field private static final VSTRETCH_DURATION:F = 0.5f


# instance fields
.field private mCircleTex:Ljava/nio/FloatBuffer;

.field private mCircleVertices:Ljava/nio/FloatBuffer;

.field private mCircleVerticesOrig:Ljava/nio/FloatBuffer;

.field private mDisplayHeight:I

.field private mDisplayLayerStack:I

.field private final mDisplayManager:Lcom/android/server/display/DisplayManagerService;

.field private mDisplayWidth:I

.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglContext:Landroid/opengl/EGLContext;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;

.field private mEglSurface:Landroid/opengl/EGLSurface;

.field private mHalfHeight:F

.field private mHalfWidth:F

.field private mMode:I

.field private mPrepared:Z

.field private mRatioS:F

.field private mRatioT:F

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceAlpha:F

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

.field private mSurfaceSession:Landroid/view/SurfaceSession;

.field private mSurfaceVisible:Z

.field private final mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private final mTexMatrix:[F

.field private final mTexNames:[I

.field private mTexNamesGenerated:Z

.field private final mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 3
    .param p1, "displayManager"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    const/16 v2, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    .line 98
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexMatrix:[F

    .line 102
    invoke-static {v2}, Lcom/android/server/power/ElectronBeam;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 103
    invoke-static {v2}, Lcom/android/server/power/ElectronBeam;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 133
    iput v1, p0, Lcom/android/server/power/ElectronBeam;->mRatioS:F

    iput v1, p0, Lcom/android/server/power/ElectronBeam;->mRatioT:F

    .line 138
    iput-object p1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    .line 139
    return-void
.end method

.method private attachEglContext()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 732
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v1, :cond_0

    .line 739
    :goto_0
    return v0

    .line 735
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Lcom/android/server/power/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 736
    const-string v1, "eglMakeCurrent"

    invoke-static {v1}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    goto :goto_0

    .line 739
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private calcCoords(F)V
    .locals 9
    .param p1, "normal"    # F

    .prologue
    .line 426
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v7, 0x28

    if-gt v0, v7, :cond_0

    .line 427
    add-int/lit8 v7, v0, 0x1

    mul-int/lit8 v4, v7, 0x2

    .line 428
    .local v4, "xIdx":I
    add-int/lit8 v6, v4, 0x1

    .line 430
    .local v6, "yIdx":I
    iget-object v7, p0, Lcom/android/server/power/ElectronBeam;->mCircleVerticesOrig:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    mul-float v3, v7, p1

    .line 431
    .local v3, "x":F
    iget-object v7, p0, Lcom/android/server/power/ElectronBeam;->mCircleVerticesOrig:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    mul-float v5, v7, p1

    .line 432
    .local v5, "y":F
    iget v7, p0, Lcom/android/server/power/ElectronBeam;->mHalfWidth:F

    add-float/2addr v7, v3

    iget v8, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, p0, Lcom/android/server/power/ElectronBeam;->mRatioS:F

    mul-float v1, v7, v8

    .line 433
    .local v1, "s":F
    iget v7, p0, Lcom/android/server/power/ElectronBeam;->mHalfHeight:F

    add-float/2addr v7, v5

    iget v8, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, p0, Lcom/android/server/power/ElectronBeam;->mRatioT:F

    mul-float v2, v7, v8

    .line 435
    .local v2, "t":F
    iget-object v7, p0, Lcom/android/server/power/ElectronBeam;->mCircleVertices:Ljava/nio/FloatBuffer;

    iget v8, p0, Lcom/android/server/power/ElectronBeam;->mHalfWidth:F

    add-float/2addr v8, v3

    invoke-virtual {v7, v4, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 436
    iget-object v7, p0, Lcom/android/server/power/ElectronBeam;->mCircleVertices:Ljava/nio/FloatBuffer;

    iget v8, p0, Lcom/android/server/power/ElectronBeam;->mHalfHeight:F

    add-float/2addr v8, v5

    invoke-virtual {v7, v6, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 438
    iget-object v7, p0, Lcom/android/server/power/ElectronBeam;->mCircleTex:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v4, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 439
    iget-object v7, p0, Lcom/android/server/power/ElectronBeam;->mCircleTex:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v6, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    .end local v1    # "s":F
    .end local v2    # "t":F
    .end local v3    # "x":F
    .end local v4    # "xIdx":I
    .end local v5    # "y":F
    .end local v6    # "yIdx":I
    :cond_0
    return-void
.end method

.method private captureScreenshotTextureAndSetViewport()Z
    .locals 17

    .prologue
    .line 475
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ElectronBeam;->attachEglContext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 476
    const/4 v1, 0x0

    .line 561
    :goto_0
    return v1

    .line 479
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/power/ElectronBeam;->mTexNamesGenerated:Z

    if-nez v1, :cond_2

    .line 480
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES10;->glGenTextures(I[II)V

    .line 481
    const-string v1, "glGenTextures"

    invoke-static {v1}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    const/4 v1, 0x0

    .line 559
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    goto :goto_0

    .line 484
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/power/ElectronBeam;->mTexNamesGenerated:Z

    .line 487
    :cond_2
    new-instance v12, Landroid/graphics/SurfaceTexture;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {v12, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 488
    .local v12, "st":Landroid/graphics/SurfaceTexture;
    new-instance v11, Landroid/view/Surface;

    invoke-direct {v11, v12}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 490
    .local v11, "s":Landroid/view/Surface;
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v1}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, v11}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 493
    :try_start_3
    invoke-virtual {v11}, Landroid/view/Surface;->release()V

    .line 496
    invoke-virtual {v12}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 497
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/ElectronBeam;->mTexMatrix:[F

    invoke-virtual {v12, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 503
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/power/ElectronBeam;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    .line 504
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 505
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 506
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x5

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 507
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x6

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 549
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES10;->glViewport(IIII)V

    .line 550
    const/16 v1, 0x1701

    invoke-static {v1}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 551
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 552
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v4, v4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES10;->glOrthof(FFFFFF)V

    .line 553
    const/16 v1, 0x1700

    invoke-static {v1}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 554
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 555
    const/16 v1, 0x1702

    invoke-static {v1}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 556
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 557
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/ElectronBeam;->mTexMatrix:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES10;->glLoadMatrixf([FI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 559
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    .line 561
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 493
    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {v11}, Landroid/view/Surface;->release()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 559
    .end local v11    # "s":Landroid/view/Surface;
    .end local v12    # "st":Landroid/graphics/SurfaceTexture;
    :catchall_1
    move-exception v1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    throw v1

    .line 512
    .restart local v11    # "s":Landroid/view/Surface;
    .restart local v12    # "st":Landroid/graphics/SurfaceTexture;
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/power/ElectronBeam;->mHalfWidth:F

    .line 513
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/power/ElectronBeam;->mHalfHeight:F

    .line 514
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/power/ElectronBeam;->mHalfWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/ElectronBeam;->mHalfWidth:F

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/ElectronBeam;->mHalfHeight:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/ElectronBeam;->mHalfHeight:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v10

    .line 515
    .local v10, "maxRadius":F
    const v9, 0x3e20d97c

    .line 517
    .local v9, "mAngleUnit":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/ElectronBeam;->mCircleVerticesOrig:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 518
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/ElectronBeam;->mCircleVerticesOrig:Ljava/nio/FloatBuffer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 520
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/ElectronBeam;->mCircleVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/ElectronBeam;->mHalfWidth:F

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 521
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/ElectronBeam;->mCircleVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/ElectronBeam;->mHalfHeight:F

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 523
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/ElectronBeam;->mCircleTex:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/ElectronBeam;->mRatioS:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 524
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/ElectronBeam;->mCircleTex:Ljava/nio/FloatBuffer;

    const/4 v2, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/ElectronBeam;->mRatioT:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 531
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/16 v1, 0x28

    if-gt v7, v1, :cond_3

    .line 532
    int-to-float v1, v7

    mul-float v8, v9, v1

    .line 533
    .local v8, "mAngle":F
    const/16 v1, 0x28

    if-ne v7, v1, :cond_5

    .line 534
    const/4 v8, 0x0

    .line 537
    :cond_5
    invoke-static {v8}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    mul-float v13, v10, v1

    .line 538
    .local v13, "x":F
    invoke-static {v8}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    mul-float v15, v10, v1

    .line 540
    .local v15, "y":F
    add-int/lit8 v1, v7, 0x1

    mul-int/lit8 v14, v1, 0x2

    .line 541
    .local v14, "xIdx":I
    add-int/lit8 v16, v14, 0x1

    .line 543
    .local v16, "yIdx":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/ElectronBeam;->mCircleVerticesOrig:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v14, v13}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 544
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/ElectronBeam;->mCircleVerticesOrig:Ljava/nio/FloatBuffer;

    move/from16 v0, v16

    invoke-virtual {v1, v0, v15}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 531
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method private static checkGlErrors(Ljava/lang/String;)Z
    .locals 1
    .param p0, "func"    # Ljava/lang/String;

    .prologue
    .line 788
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static checkGlErrors(Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "func"    # Ljava/lang/String;
    .param p1, "log"    # Z

    .prologue
    .line 792
    const/4 v1, 0x0

    .line 794
    .local v1, "hadError":Z
    :goto_0
    invoke-static {}, Landroid/opengl/GLES10;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_1

    .line 795
    if-eqz p1, :cond_0

    .line 796
    const-string v2, "ElectronBeam"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 798
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 800
    :cond_1
    return v1
.end method

.method private createEglContext()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 579
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_1

    .line 580
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 581
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v4, :cond_0

    .line 582
    const-string v0, "eglGetDisplay"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    .line 623
    :goto_0
    return v2

    .line 586
    :cond_0
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 587
    .local v9, "version":[I
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v9, v2, v9, v10}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 589
    const-string v0, "eglInitialize"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    goto :goto_0

    .line 594
    .end local v9    # "version":[I
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_3

    .line 595
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 602
    .local v1, "eglConfigAttribList":[I
    new-array v6, v10, [I

    .line 603
    .local v6, "numEglConfigs":[I
    new-array v3, v10, [Landroid/opengl/EGLConfig;

    .line 604
    .local v3, "eglConfigs":[Landroid/opengl/EGLConfig;
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 606
    const-string v0, "eglChooseConfig"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    goto :goto_0

    .line 609
    :cond_2
    aget-object v0, v3, v2

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 612
    .end local v1    # "eglConfigAttribList":[I
    .end local v3    # "eglConfigs":[Landroid/opengl/EGLConfig;
    .end local v6    # "numEglConfigs":[I
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_4

    .line 613
    new-array v8, v10, [I

    const/16 v0, 0x3038

    aput v0, v8, v2

    .line 616
    .local v8, "eglContextAttribList":[I
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/power/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v4, v5, v8, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    .line 618
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_4

    .line 619
    const-string v0, "eglCreateContext"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    goto :goto_0

    .end local v8    # "eglContextAttribList":[I
    :cond_4
    move v2, v10

    .line 623
    goto :goto_0

    .line 595
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data
.end method

.method private createEglSurface()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 674
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v3, :cond_0

    .line 675
    new-array v0, v2, [I

    const/16 v3, 0x3038

    aput v3, v0, v1

    .line 679
    .local v0, "eglSurfaceAttribList":[I
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/power/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    iget-object v5, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    invoke-static {v3, v4, v5, v0, v1}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 681
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v3, :cond_0

    .line 682
    const-string v2, "eglCreateWindowSurface"

    invoke-static {v2}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    .line 686
    .end local v0    # "eglSurfaceAttribList":[I
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private static createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 778
    mul-int/lit8 v1, p0, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 779
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 780
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method private createSurface()Z
    .locals 8

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_0

    .line 638
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 641
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 643
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 646
    :try_start_1
    iget v0, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    if-nez v0, :cond_2

    .line 647
    const v6, 0x20004

    .line 651
    .local v6, "flags":I
    :goto_0
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceSession:Landroid/view/SurfaceSession;

    const-string v2, "ElectronBeam"

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    .end local v6    # "flags":I
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 661
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 662
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    .line 663
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 665
    new-instance v0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    iget-object v2, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/view/SurfaceControl;)V

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    .line 666
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->onDisplayTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 668
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 670
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 649
    :cond_2
    const/16 v6, 0x404

    .restart local v6    # "flags":I
    goto :goto_0

    .line 654
    .end local v6    # "flags":I
    :catch_0
    move-exception v7

    .line 655
    .local v7, "ex":Landroid/view/Surface$OutOfResourcesException;
    :try_start_3
    const-string v0, "ElectronBeam"

    const-string v1, "Unable to create surface."

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 656
    const/4 v0, 0x0

    .line 668
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_1

    .end local v7    # "ex":Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private destroyEglSurface()V
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    const-string v0, "eglDestroySurface"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    .line 694
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 696
    :cond_1
    return-void
.end method

.method private destroyScreenshotTexture()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 565
    iget-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mTexNamesGenerated:Z

    if-eqz v0, :cond_0

    .line 566
    iput-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mTexNamesGenerated:Z

    .line 567
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->attachEglContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES10;->glDeleteTextures(I[II)V

    .line 570
    const-string v0, "glDeleteTextures"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    .line 576
    :cond_0
    return-void

    .line 572
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    throw v0
.end method

.method private destroySurface()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 699
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->dispose()V

    .line 701
    iput-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    .line 702
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 705
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 709
    iput-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 710
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceVisible:Z

    .line 711
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceAlpha:F

    .line 713
    :cond_0
    return-void

    .line 707
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private detachEglContext()V
    .locals 4

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 747
    :cond_0
    return-void
.end method

.method private drawCircleLcdOffAnimation(F)V
    .locals 9
    .param p1, "stretch"    # F

    .prologue
    const/16 v8, 0x2601

    const/16 v7, 0x1406

    const/4 v6, 0x2

    const/4 v5, 0x0

    const v4, 0x8d65

    .line 386
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lcom/android/server/power/ElectronBeam;->easeInEaseOut(F)F

    move-result v2

    sub-float v0, v1, v2

    .line 391
    .local v0, "normal":F
    invoke-direct {p0, v0}, Lcom/android/server/power/ElectronBeam;->calcCoords(F)V

    .line 393
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mCircleVertices:Ljava/nio/FloatBuffer;

    invoke-static {v6, v7, v5, v1}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 394
    const v1, 0x8074

    invoke-static {v1}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 397
    const/16 v1, 0xde1

    invoke-static {v1}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 398
    invoke-static {v4}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 400
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    aget v1, v1, v5

    invoke-static {v4, v1}, Landroid/opengl/GLES10;->glBindTexture(II)V

    .line 401
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES10;->glTexEnvx(III)V

    .line 402
    const/16 v1, 0x2800

    invoke-static {v4, v1, v8}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 403
    const/16 v1, 0x2801

    invoke-static {v4, v1, v8}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 404
    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 405
    const/16 v1, 0x2803

    const v2, 0x812f

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 406
    invoke-static {v4}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 408
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mCircleTex:Ljava/nio/FloatBuffer;

    invoke-static {v6, v7, v5, v1}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 409
    const v1, 0x8078

    invoke-static {v1}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 411
    const/4 v1, 0x6

    const/16 v2, 0x2a

    invoke-static {v1, v5, v2}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 413
    const v1, 0x8074

    invoke-static {v1}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 414
    const v1, 0x8078

    invoke-static {v1}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 415
    return-void
.end method

.method private drawHStretch(F)V
    .locals 8
    .param p1, "stretch"    # F

    .prologue
    const v7, 0x8074

    const/4 v6, 0x0

    const/high16 v5, 0x3f400000    # 0.75f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 364
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1}, Lcom/android/server/power/ElectronBeam;->scurve(FF)F

    move-result v0

    .line 369
    .local v0, "ag":F
    cmpg-float v1, p1, v4

    if-gez v1, :cond_0

    .line 371
    const/4 v1, 0x2

    const/16 v2, 0x1406

    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v1, v2, v6, v3}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 372
    invoke-static {v7}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 375
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/power/ElectronBeam;->setHStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 376
    mul-float v1, v0, v5

    sub-float v1, v4, v1

    mul-float v2, v0, v5

    sub-float v2, v4, v2

    mul-float v3, v0, v5

    sub-float v3, v4, v3

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    .line 377
    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-static {v1, v6, v2}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 380
    invoke-static {v7}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 382
    :cond_0
    return-void
.end method

.method private drawVStretch(F)V
    .locals 12
    .param p1, "stretch"    # F

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x4

    const v9, 0x8d65

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 288
    const/high16 v3, 0x40f00000    # 7.5f

    invoke-static {p1, v3}, Lcom/android/server/power/ElectronBeam;->scurve(FF)F

    move-result v2

    .line 289
    .local v2, "ar":F
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p1, v3}, Lcom/android/server/power/ElectronBeam;->scurve(FF)F

    move-result v1

    .line 290
    .local v1, "ag":F
    const/high16 v3, 0x41080000    # 8.5f

    invoke-static {p1, v3}, Lcom/android/server/power/ElectronBeam;->scurve(FF)F

    move-result v0

    .line 297
    .local v0, "ab":F
    invoke-static {v8, v8}, Landroid/opengl/GLES10;->glBlendFunc(II)V

    .line 298
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 301
    const/4 v3, 0x2

    const/16 v4, 0x1406

    iget-object v5, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v3, v4, v7, v5}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 302
    const v3, 0x8074

    invoke-static {v3}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 305
    const/16 v3, 0xde1

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 306
    invoke-static {v9}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 309
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    aget v3, v3, v7

    invoke-static {v9, v3}, Landroid/opengl/GLES10;->glBindTexture(II)V

    .line 310
    const/16 v4, 0x2300

    const/16 v5, 0x2200

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    const/16 v3, 0x2100

    :goto_0
    invoke-static {v4, v5, v3}, Landroid/opengl/GLES10;->glTexEnvx(III)V

    .line 312
    const/16 v3, 0x2800

    const/16 v4, 0x2601

    invoke-static {v9, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 314
    const/16 v3, 0x2801

    const/16 v4, 0x2601

    invoke-static {v9, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 316
    const/16 v3, 0x2802

    const v4, 0x812f

    invoke-static {v9, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 318
    const/16 v3, 0x2803

    const v4, 0x812f

    invoke-static {v9, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 320
    invoke-static {v9}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 321
    const/4 v3, 0x2

    const/16 v4, 0x1406

    iget-object v5, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v3, v4, v7, v5}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 322
    const v3, 0x8078

    invoke-static {v3}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 325
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5, v2}, Lcom/android/server/power/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 326
    invoke-static {v8, v7, v7, v8}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 327
    invoke-static {v11, v7, v10}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 330
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5, v1}, Lcom/android/server/power/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 331
    invoke-static {v7, v8, v7, v8}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 332
    invoke-static {v11, v7, v10}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 335
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5, v0}, Lcom/android/server/power/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 336
    invoke-static {v7, v7, v8, v8}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 337
    invoke-static {v11, v7, v10}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 340
    invoke-static {v9}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 341
    const v3, 0x8078

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 342
    invoke-static {v8, v8, v8, v8}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 345
    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 346
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v3}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    .line 347
    invoke-static {v11, v7, v10}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 351
    :cond_0
    const v3, 0x8074

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 352
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 353
    return-void

    .line 310
    :cond_1
    const/16 v3, 0x1e01

    goto/16 :goto_0
.end method

.method private easeInEaseOut(F)F
    .locals 4
    .param p1, "value"    # F

    .prologue
    .line 418
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, p1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    return v0
.end method

.method private static logEglError(Ljava/lang/String;)V
    .locals 3
    .param p0, "func"    # Ljava/lang/String;

    .prologue
    .line 784
    const-string v0, "ElectronBeam"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 785
    return-void
.end method

.method private static scurve(FF)F
    .locals 5
    .param p0, "value"    # F
    .param p1, "s"    # F

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 758
    sub-float v1, p0, v4

    .line 763
    .local v1, "x":F
    invoke-static {v1, p1}, Lcom/android/server/power/ElectronBeam;->sigmoid(FF)F

    move-result v3

    sub-float v2, v3, v4

    .line 767
    .local v2, "y":F
    invoke-static {v4, p1}, Lcom/android/server/power/ElectronBeam;->sigmoid(FF)F

    move-result v3

    sub-float v0, v3, v4

    .line 770
    .local v0, "v":F
    div-float v3, v2, v0

    mul-float/2addr v3, v4

    add-float/2addr v3, v4

    return v3
.end method

.method private static setHStretchQuad(Ljava/nio/FloatBuffer;FFF)V
    .locals 8
    .param p0, "vtx"    # Ljava/nio/FloatBuffer;
    .param p1, "dw"    # F
    .param p2, "dh"    # F
    .param p3, "a"    # F

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 453
    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, p1

    sub-float v5, v6, p3

    mul-float v1, v4, v5

    .line 454
    .local v1, "w":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 455
    .local v0, "h":F
    sub-float v4, p1, v1

    mul-float v2, v4, v7

    .line 456
    .local v2, "x":F
    sub-float v4, p2, v6

    mul-float v3, v4, v7

    .line 457
    .local v3, "y":F
    invoke-static {p0, v2, v3, v1, v6}, Lcom/android/server/power/ElectronBeam;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    .line 458
    return-void
.end method

.method private static setQuad(Ljava/nio/FloatBuffer;FFFF)V
    .locals 2
    .param p0, "vtx"    # Ljava/nio/FloatBuffer;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F

    .prologue
    .line 464
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 465
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 466
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 467
    const/4 v0, 0x3

    add-float v1, p2, p4

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 468
    const/4 v0, 0x4

    add-float v1, p1, p3

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 469
    const/4 v0, 0x5

    add-float v1, p2, p4

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 470
    const/4 v0, 0x6

    add-float v1, p1, p3

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 471
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 472
    return-void
.end method

.method private static setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V
    .locals 6
    .param p0, "vtx"    # Ljava/nio/FloatBuffer;
    .param p1, "dw"    # F
    .param p2, "dh"    # F
    .param p3, "a"    # F

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 445
    mul-float v4, p1, p3

    add-float v1, p1, v4

    .line 446
    .local v1, "w":F
    mul-float v4, p2, p3

    sub-float v0, p2, v4

    .line 447
    .local v0, "h":F
    sub-float v4, p1, v1

    mul-float v2, v4, v5

    .line 448
    .local v2, "x":F
    sub-float v4, p2, v0

    mul-float v3, v4, v5

    .line 449
    .local v3, "y":F
    invoke-static {p0, v2, v3, v1, v0}, Lcom/android/server/power/ElectronBeam;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    .line 450
    return-void
.end method

.method private showSurface(F)Z
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    const/4 v2, 0x1

    .line 716
    iget-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 717
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 719
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v1, 0x40000001    # 2.0000002f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 720
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 721
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 725
    iput-boolean v2, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceVisible:Z

    .line 726
    iput p1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceAlpha:F

    .line 728
    :cond_1
    return v2

    .line 723
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private static sigmoid(FF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "s"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 774
    neg-float v0, p0

    mul-float/2addr v0, p1

    invoke-static {v0}, Landroid/util/FloatMath;->exp(F)F

    move-result v0

    add-float/2addr v0, v1

    div-float v0, v1, v0

    return v0
.end method

.method private tryPrepare()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 198
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->createSurface()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    if-nez v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->createEglContext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->createEglSurface()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->captureScreenshotTextureAndSetViewport()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 206
    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->destroyScreenshotTexture()V

    .line 222
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->destroyEglSurface()V

    .line 223
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->destroySurface()V

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mPrepared:Z

    .line 225
    return-void
.end method

.method public draw(F)Z
    .locals 7
    .param p1, "level"    # F

    .prologue
    const/4 v0, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 239
    iget-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mPrepared:Z

    if-nez v1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v0

    .line 243
    :cond_1
    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    if-nez v1, :cond_2

    .line 244
    sub-float v0, v5, p1

    invoke-direct {p0, v0}, Lcom/android/server/power/ElectronBeam;->showSurface(F)Z

    move-result v0

    goto :goto_0

    .line 247
    :cond_2
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->attachEglContext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    :try_start_0
    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES10;->glClearColor(FFFF)V

    .line 253
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES10;->glClear(I)V

    .line 257
    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 258
    sub-float v1, v5, p1

    invoke-direct {p0, v1}, Lcom/android/server/power/ElectronBeam;->drawCircleLcdOffAnimation(F)V

    .line 268
    :goto_1
    const-string v1, "drawFrame"

    invoke-static {v1}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    .line 274
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    goto :goto_0

    .line 260
    :cond_3
    cmpg-float v1, p1, v6

    if-gez v1, :cond_4

    .line 261
    div-float v1, p1, v6

    sub-float v1, v5, v1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/power/ElectronBeam;->drawHStretch(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 274
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    throw v0

    .line 263
    :cond_4
    sub-float v1, p1, v6

    div-float/2addr v1, v6

    sub-float v1, v5, v1

    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/power/ElectronBeam;->drawVStretch(F)V

    goto :goto_1

    .line 272
    :cond_5
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    .line 276
    invoke-direct {p0, v5}, Lcom/android/server/power/ElectronBeam;->showSurface(F)Z

    move-result v0

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 804
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 805
    const-string v0, "Electron Beam State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    return-void
.end method

.method public prepare(I)Z
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/16 v5, 0x54

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 153
    iput p1, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    .line 156
    if-ne p1, v3, :cond_0

    .line 157
    invoke-static {v5}, Lcom/android/server/power/ElectronBeam;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/ElectronBeam;->mCircleVertices:Ljava/nio/FloatBuffer;

    .line 158
    invoke-static {v5}, Lcom/android/server/power/ElectronBeam;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/ElectronBeam;->mCircleVerticesOrig:Ljava/nio/FloatBuffer;

    .line 159
    invoke-static {v5}, Lcom/android/server/power/ElectronBeam;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/ElectronBeam;->mCircleTex:Ljava/nio/FloatBuffer;

    .line 165
    :cond_0
    iget-object v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 166
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-nez v0, :cond_1

    .line 194
    :goto_0
    return v2

    .line 169
    :cond_1
    iget v4, v0, Landroid/view/DisplayInfo;->layerStack:I

    iput v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayLayerStack:I

    .line 170
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v4

    iput v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    .line 171
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v4

    iput v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    .line 174
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->tryPrepare()Z

    move-result v4

    if-nez v4, :cond_2

    .line 175
    invoke-virtual {p0}, Lcom/android/server/power/ElectronBeam;->dismiss()V

    goto :goto_0

    .line 180
    :cond_2
    iput-boolean v3, p0, Lcom/android/server/power/ElectronBeam;->mPrepared:Z

    .line 189
    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-ne p1, v3, :cond_4

    .line 190
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_4

    .line 191
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/android/server/power/ElectronBeam;->draw(F)Z

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_4
    move v2, v3

    .line 194
    goto :goto_0
.end method
