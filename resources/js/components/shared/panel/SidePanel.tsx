import React, { FC, PropsWithChildren, useMemo } from 'react';
import { createPortal } from 'react-dom';
import clsx from 'clsx';
import { AnimatePresence, motion } from 'framer-motion';
export interface SidePanelProps {
    open: boolean;
    position?: 'left' | 'right';
    onPanelClosed: () => void;
}
export const SidePanel: FC<PropsWithChildren<SidePanelProps>> = ({
    open,
    children,
    position = 'left',
    onPanelClosed
}) => {
    const variants = {
        leftClosed: {
            x: '-100%',
            transition: { type: 'tween', duration: 0.1 }
        },
        leftOpen: {
            x: 0,
            transition: { type: 'tween', duration: 0.1 }
        },
        rightClosed: {
            x: '100%',
            transition: { type: 'tween', duration: 0.1 }
        },
        rightOpen: {
            x: 'calc(100% - min(80%, 320px))',
            transition: { type: 'tween', duration: 0.1 }
        }
    };

    return createPortal(
        <AnimatePresence>
            {open && (
                <motion.div
                    className="side-panel-container"
                    initial={{ background: 'rgba(0, 0, 0, 0)' }}
                    animate={{ background: 'rgba(0, 0, 0, .2)' }}
                    exit={{ background: 'rgba(0, 0, 0, 0)' }}
                    onClick={() => onPanelClosed()}
                >
                    <motion.div
                        variants={variants}
                        initial={position === 'left' ? 'leftClosed' : 'rightClosed'}
                        animate={position === 'left' ? 'leftOpen' : 'rightOpen'}
                        exit={position === 'left' ? 'leftClosed' : 'rightClosed'}
                        className={clsx(
                            'side-panel',
                            `side-panel--${position}`
                        )}
                        onClick={(e) => e.stopPropagation()}
                    >
                        {children}
                    </motion.div>
                </motion.div>
            )}
        </AnimatePresence>,
        document.querySelector('.panel-root') as Element
    );
}
